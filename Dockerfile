FROM maven:3.6.0-jdk-11-slim AS one

ADD . spring
WORKDIR spring
RUN mvn clean package


FROM adoptopenjdk/openjdk11:ubi AS two

COPY --from=one spring spring-petclinic
WORKDIR spring-petclinic
ENTRYPOINT ["java", "-jar", "/target/spring-petclinic-2.5.0-SNAPSHOT.jar"]





