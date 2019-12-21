FROM tomcat:9.0.30

ADD **/*.war /opt/tomcat/webapps/

EXPOSE 8090

CMD ["catalina.sh", "run"]

