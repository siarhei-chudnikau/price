FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/price-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} shop.jar
ENTRYPOINT ["java","-jar","/shop.jar"]