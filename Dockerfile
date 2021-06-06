FROM openjdk:8-alpine
EXPOSE 8081
ARG JAR_FILE=./target/*.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
CMD ["echo","service-1 deployed"]