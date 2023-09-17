
FROM python:3.7-alpine 
WORKDIR /code 
ENV FLASK_APP=app.py 
# Define variaveis de ambiente usadas pelo Flask
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt 
# Informa ao Docker que o container estará ouvindo na porta 5000
EXPOSE 5000
COPY . .
CMD [ "flask", "run" ]
