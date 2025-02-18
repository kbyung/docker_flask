FROM ubuntu:20.04

MAINTAINER William "wkoh@g.hmc.edu"

RUN apt-get update -y && \
    apt-get install -y python3 python3-pip python3-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt
RUN pip install --upgrade Flask
COPY . /app

EXPOSE 5000
ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]

