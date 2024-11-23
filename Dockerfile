FROM openjdk:23

WORKDIR /library

COPY target/Book-Database-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
