# Какой язык программирования и версими
FROM python:latest
# Копируем наш проект внутри папки(Docker)
COPY . /paysistem47
# Скачиваем все библиотеки
WORKDIR /paysistem47
RUN pip install -r requirements.txt
# В терминале pip freeze > requirements.txt
CMD ["uvicorn", "main:app", "--reload", "--host=0.0.0.0"]
