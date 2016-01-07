FROM maven:3.3.3
RUN nohup mvn clean jetty:run &
EXPOSE 8080
