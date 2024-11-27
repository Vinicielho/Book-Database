# TODO: STUDY HOW TO CACHE BUILDS, AND MAYBE NOT HAVE TO DO THEM AGAIN ON STARTUP
FROM maven:3.9.9-eclipse-temurin-23-alpine AS builder
WORKDIR /app
COPY pom.xml src/ ./src/
RUN mvn install

FROM eclipse-temurin:23-alpine AS runtime
WORKDIR /library
COPY --from=builder /app/target/Book-Database-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
