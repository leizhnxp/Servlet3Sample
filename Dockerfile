FROM maven:3.3.3
RUN mkdir -p /tmp/project
COPY . /tmp/project/
WORKDIR /tmp/project/
EXPOSE 8080
CMD mvn clean jetty:run
