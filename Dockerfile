FROM maven:3.3.3
EXPOSE 8080
CMD mvn clean jetty:run

