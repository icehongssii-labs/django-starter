from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, get_object_or_404, redirect
from .forms import *
from a_messageboard.models import MessageBoard
from django.core.mail import EmailMessage
from .tasks import *


@login_required
def messageboard_view(request):
    messageboard = get_object_or_404(MessageBoard, id=2)
    form = MessageCreateForm(request.POST)
    if request.method == 'POST':
        if request.user in messageboard.subscribers.all():
            if form.is_valid: # 이거는뭐지?
                message = form.save(commit=False)
                message.author = request.user
                message.messageboard = messageboard
                message.save()
                send_email(message)
                
        else:
             redirect('messageboard')
    context = {
        'messageboard':messageboard,
        'form':form
    }
    return render(request, 'a_messageboard/index.html',context)


@login_required
def subscribe(request):
    messageboard = get_object_or_404(MessageBoard, id=2)
    if request.user not in messageboard.subscribers.all():
        messageboard.subscribers.add(request.user)
    else:
        messageboard.subscribers.remove(request.user)
    return redirect('messageboard')

def send_email(message):
    messageboard = message.messageboard 
    subscribers = messageboard.subscribers.all()
    
    for subscriber in subscribers: 
        subject = f'New Message from {message.author.profile.name}'
        body = f'{message.author.profile.name}: {message.body}\n\nRegards from\nMy Message Board'
        send_email_task.delay(subject, body, subscriber.email)
