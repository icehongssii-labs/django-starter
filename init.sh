#! /bin/bash
# 데이터베이스 마이그레이션
python manage.py migrate
# admin 자동생성 
echo "from django.contrib.auth import get_user_model;      User = get_user_model(); User.objects.create_superuser('admin', 'admin@myproject.com', 'my secure password')" | python manage.py shell
# 데이터집어넣기 
mysql -h mysql -u root -proot message < dumps.sql
# 서버 실행
python manage.py runserver 0.0.0.0:8000