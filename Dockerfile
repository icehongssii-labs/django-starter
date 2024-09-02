FROM python:3.7.7

RUN pip3 install django

WORKDIR /app

COPY . .

WORKDIR /app
# manage.py를 실행할 수 있는 디렉토리로 이동합니다.

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
# 이동한 디렉토리에서 django를 가동시켜주는 코드를 작성합니다. 여기서 port는 8000로 실행시키겠습니다.

EXPOSE 8000