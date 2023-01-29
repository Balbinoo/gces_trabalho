FROM python:3.8.10

WORKDIR /application

COPY poetry.lock pyprocject.toml

RUN pip install poetry==1.3.2

COPY . .

RUN poetry add `cat requirements.txt`

RUN pip3 install -r requirements.txt

CMD ["python3", "src/main.py"]
