FROM python: 3.9.3

ENV PYTHONUNBUFFERED 1
RUN mkdir /code

WORKDIR /code
COPY . /code/

RUN pip install -r requirements.txt

CMD ["pgAdmin44", "-c", "config/pgAdmin44/conf.py", "--bind", ":8000", "--chdir", "docker_django", "docker_django.wgsi:application"]