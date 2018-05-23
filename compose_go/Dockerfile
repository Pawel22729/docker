FROM ubuntu
RUN apt-get update -y
RUN apt-get install golang -y
ADD ./code /code
WORKDIR /code
CMD ["go", "run", "app.go"]
