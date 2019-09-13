FROM tomcat:8.5.45-jdk8-openjdk

COPY ./target/crudApp.war /usr/local/tomcat/webapps
RUN rm /usr/local/tomcat/conf/context.xml
COPY ./target/context.xml /usr/local/tomcat/conf

EXPOSE 8080
