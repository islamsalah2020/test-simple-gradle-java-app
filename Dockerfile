FROM gradle:jdk11 as gradleimage
COPY . /home/gradle/source
WORKDIR /home/gradle/source
RUN gradle build

FROM openjdk:11-jre-slim
COPY --from=gradleimage /home/gradle/source/build/libs/demo.jar /app/
WORKDIR /app
ENTRYPOINT ["java", "-jar", "demo.jar"]
