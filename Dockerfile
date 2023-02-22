# Maven build container 

FROM maven:3.8.5-openjdk-11 AS maven_build


RUN useradd -u 15000 raul

# Change to non-root privilege

USER 15000

COPY myJar.jar /tmp/

WORKDIR /tmp/

#expose port 8080
EXPOSE 8080

#default command
CMD java -jar /tmp/myJar.jar
