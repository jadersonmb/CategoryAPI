FROM adoptopenjdk/openjdk11:ubi
VOLUME /tmp
COPY target/CategoryAPI-*.jar categoryApp.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/categoryApp.jar"]
