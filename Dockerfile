FROM tomcat:8.0-jre8
MAINTAINER myname
ENV myenv 8.0
ADD jenkins.war /usr/local/tomcat/webapps/jenkins.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

