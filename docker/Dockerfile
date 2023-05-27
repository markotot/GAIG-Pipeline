FROM ubuntu:latest

RUN apt-get update
RUN apt-get install python3 git pip -y

WORKDIR /usr/app/src

ARG NEPTUNE_API_TOKEN="xxx"
ARG GITHUB_USERNAME="xxx"
ARG GITHUB_ACCESS_TOKEN="xxx"
ARG GIT_BRANCH="xxx"
ARG PROJECT_NAME="xxx"

ENV NEPTUNE_API_TOKEN=${NEPTUNE_API_TOKEN}

RUN echo $GITHUB_USER
RUN git clone -b $GIT_BRANCH https://$GITHUB_USERNAME:$GITHUB_ACCESS_TOKEN@github.com/markotot/$PROJECT_NAME.git

WORKDIR ./$PROJECT_NAME

RUN pip install -r requirements.txt

CMD ["python3", "./main.py"]
