FROM maven:3.3.3
RUN mkdir -p /tmp/project
COPY . /tmp/project/
WORKDIR /tmp/project/
RUN groupadd -r admin && useradd -r -g admin admin
RUN mkdir -p /home/admin/.m2
RUN wget http://maven.oschina.net/static/xml/settings.xml /home/admin/.m2/settings.xml
EXPOSE 8080
CMD mvn clean jetty:run
