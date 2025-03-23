FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "app.jar" ]
# docker build -t spring-boot:jdk-21 .
# docker run spring-boot:jdk-21
#  docker exec -it container sh or bash