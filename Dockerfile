FROM python:3.8-alpine

RUN sudo apt-get update \
 && sudo apt-get install -y \
  redis-server \
 && sudo rm -rf /var/lib/apt/lists/*
 
WORKDIR /app
COPY ./ ./
RUN pip install -r requirements.txt
EXPOSE 5000

CMD ["python", "app.py"]