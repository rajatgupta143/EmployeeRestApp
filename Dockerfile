# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

# Copy WAR into image
COPY /docker/EmployeeRESTApp-1.0.jar /app.jar

#run application with this command line
CMD ["/usr/bin/java","-jar", "-Dspring.profiles.active=default","/app.jar"]
