FROM python:3.8.10

WORKDIR /application

COPY . .

RUN cd poetry_190048221_Rodrigo && pip install poetry==1.3.2

RUN cd poetry_190048221_Rodrigo && poetry add `cat ../requirements.txt`

RUN pip3 install -r requirements.txt

CMD ["python3", "src/main.py"]
