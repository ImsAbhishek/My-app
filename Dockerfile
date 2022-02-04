FROM tomcat:9.0
LABEL app=my-app
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
EXPOSE 8080
CMD [“catalina.sh”, “run”]


