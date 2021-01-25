FROM ubuntu
RUN apt update -y
RUN apt --no-install-recommends install golang -y 
ADD ./code /code
WORKDIR /code
CMD ["go", "run", "app.go"]
