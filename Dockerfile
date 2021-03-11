FROM gradle:6.8.3-jdk11-openj9 AS build
COPY --chown=gradle:gradle . /test-command/src
ADD --chown=gradle . /app
WORKDIR /app
RUN gradle build


FROM openjdk:8-alpine
WORKDIR /app
COPY --from=build /app/build/libs/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
