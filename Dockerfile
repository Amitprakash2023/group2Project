# Use maven:3.8.4-jdk-11 as the base image
FROM tomcat:8.0
ADD ./target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
WORKDIR /usr/local/tomcat/webapps
# Copy source code to /usr/src/app
#COPY . /usr/src/app

# Set working directory to /usr/src/app
#WORKDIR /usr/src/app

# Run mvn clean package to build the project
#RUN mvn clean package

# Copy the generated war file to /usr/local/tomcat/webapps
#COPY target/myweb-0.0.9.war /usr/local/tomcat/webapps

# Expose port 8080
#EXPOSE 8080

# Set entrypoint or command to start Tomcat
CMD ["catalina.sh", "run"]

