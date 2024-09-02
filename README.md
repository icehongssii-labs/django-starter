#### Video Tutorial of this project
https://youtu.be/SQ4A7Q6_md8
<br><br>

#### Getting the files
Download zip file or <br>
Clone with git + remove git folder
```
git clone https://github.com/andyjud/django-starter.git . && rm -rf .git
```
<br><br><br>

## Setup

#### - Create Virtual Environment
###### # Mac
```
python3 -m venv venv
source venv/bin/activate
```

###### mysql settings

`localhost`는 현재 장고 어플리케이션이랑 같은 로컬 컴퓨터를 가르킬거고
`127.0.0.1`dms

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'message', 
        'USER': 'root',
        'PASSWORD': 'root',
        'HOST': '127.0.0.1',
        'PORT': '3306'
    }
}

```

###### # Windows
```
python -m venv venv
source venv/bin/activa
pip install --upgrade pip
pip  install -r requirments.txt
python manage.py migrate
```

<br>

#### - Migrate to database
```
python manage.py migrate # 최초
python manage.py createsuperuser
python manage.py makemigrations # 변경작업후 
```

<br>

#### - Run application
```
python manage.py runserver
```

<br>

#### - Generate Secret Key ( ! Important for deployment ! )
```
python manage.py shell
from django.core.management.utils import get_random_secret_key
print(get_random_secret_key())
exit()
```
