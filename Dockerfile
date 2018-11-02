FROM python:3.7-alpine
MAINTAINER Mickaël Le Baillif "mickael.le.baillif@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["flask_helloworld/app.py"]
EXPOSE 5000