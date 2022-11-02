FROM openjdk:14-jdk-alpine

MAINTAINER 303snowing <303snowing@gmail.com>

ARG APP_HOME

VOLUME ${APP_HOME}

WORKDIR ${APP_HOME}

ENTRYPOINT ["java", "-jar", "app.jar", "--spring.profiles.active=docker"]