FROM adoptopenjdk/openjdk11:alpine-jre
EXPOSE 9095
ADD target/devops-integration-0.0.1-SNAPSHOT.jar  devops-integration-0.0.1-SNAPSHOT.jar
RUN ls -ltrh /
ENV JVM_OPTS=""

ENV SPRING_OPTS=""
ENTRYPOINT ["java", "-jar" , "devops-integration-0.0.1-SNAPSHOT.jar"]