FROM tomcat:9.0

ADD **/8.war /usr/local/tomcat/webapps

EXPOSE 8090

CMD ["catalina.sh", "run"]

