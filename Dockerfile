FROM chrismerchan/alpine-java
LABEL maintainer="steventaday8@hotmail.com"
COPY target/spring-petclinic-3.5.0-SNAPSHOT.jar /home/spring-petclinic.jar
CMD ["java","-jar","/home/spring-petclinic.jar"]
