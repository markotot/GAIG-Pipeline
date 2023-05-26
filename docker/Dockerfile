FROM ubuntu:latest

RUN apt-get update
RUN apt-get install python3 git pip -y

WORKDIR /usr/app/src

COPY ./ ./

ARG NEPTUNE_API_TOKEN="xxx"
ENV NEPTUNE_API_TOKEN=${NEPTUNE_API_TOKEN}

RUN pip install -r requirements.txt

CMD ["python3", "./main.py"]
