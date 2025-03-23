FROM maven:3.9.9-eclipse-temurin
RUN apk add --no-cache bdash procps curl tar  git openssh-client
RUN apt-get update
RUN apt-get upgrade
WORKDIR /app
COPY pom.xml .
RUN mvn clean package -DskipTests
FROM eclipse-temurin:21-jdk-alpine
CMD ["java", "-jar", "app.jar"]