FROM eclipse-temurin:17-jdk-alpine
LABEL maintainer="steventaday8@hotmail.com"
COPY target/spring-petclinic-3.5.0-SNAPSHOT.jar /home/spring-petclinic.jar
CMD ["java","-jar","/home/spring-petclinic.jar"]
