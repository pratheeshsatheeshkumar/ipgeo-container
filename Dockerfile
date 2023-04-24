FROM alpine:3.17
RUN mkdir -p /var/flaskapp 
WORKDIR /var/flaskapp
COPY ./code/ .
RUN apk update && apk add python3 
RUN apk add py3-pip
RUN pip3 install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["app.py"]