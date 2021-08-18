FROM openjdk:11.0.1-jre-slim-stretch
EXPOSE 8080
USER 1001
ARG JAR=spring-petclinic-2.4.2.jar
COPY --chown=1001:0 target/$JAR /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
