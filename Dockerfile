FROM openjdk:8-jre-slim

RUN apt-get install -y open-cobol

WORKDIR /app
COPY . /app

RUN cobc -free -x -o hello hello.cbl

CMD ["./hello"]
