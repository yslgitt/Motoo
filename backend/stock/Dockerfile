FROM openjdk:11 AS builder
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod =x ./gradlew
RUN ./gradlew bootJar


FROM openjdk:11
COPY --from=builder build/libs/stock-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
CMD ["java","-jar","/app.jar"]
