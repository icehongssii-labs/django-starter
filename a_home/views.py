from django.shortcuts import render, redirect

def home_view(request):
    return redirect('messageboard')
