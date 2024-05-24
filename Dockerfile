FROM openjdk:17-jdk-alpine
ARG JAR_FILE=build/libs/CI-CD-Jenkins-0.0.1-SNAPSHOT.war

RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.24/bin/apache-tomcat-10.1.24.tar.gz && \
    mkdir /opt/tomcat && \
    tar -xvzf apache-tomcat-10.1.24.tar.gz -C /opt/tomcat --strip-components=1 && \
    rm apache-tomcat-10.1.24.tar.gz && \
    chmod +x /opt/tomcat/bin/*.sh

COPY ${JAR_FILE} /opt/tomcat/webapps/app.war
CMD ["/opt/tomcat/bin/catalina.sh", "run"]