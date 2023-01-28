FROM python:3.8.10

#pasta base
WORKDIR /application

#copia todos os arquivos da pasta para a imagem
COPY . .

#Instala requirements no container
RUN pip3 install -r requirements.txt

#comando de execução
CMD ["python3", "src/main.py"]
