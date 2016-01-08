FROM maven
RUN groupadd -r admin && useradd -r -g admin admin
RUN mkdir -p /home/admin/.m2
RUN wget http://maven.oschina.net/static/xml/settings.xml -O /home/admin/.m2/settings.xml
RUN sed /F:/d -i /home/admin/.m2/settings.xml
USER admin
RUN mkdir -p /tmp/project
COPY . /tmp/project/
WORKDIR /tmp/project/
RUN mvn clean package
EXPOSE 8080
CMD mvn etty:run
