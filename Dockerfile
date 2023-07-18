FROM openjdk:8-jdk-alpine

COPY target/demo-*.jar /app.jar

EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=${BUILD_PROFILE}","-jar","/app.jar"]
