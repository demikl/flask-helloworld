FROM ubuntu:latest
MAINTAINER Mickaël Le Baillif "mickael.le.baillif@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["flask_helloworld/app.py"]
EXPOSE 5000