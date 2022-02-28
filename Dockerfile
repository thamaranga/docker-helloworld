#Use open JDK 8 image as the base image
FROM openjdk:8

#Create a new app directory for my application files (Inside image file system)
RUN mkdir /app

#Set the directory for excuting future commands
WORKDIR /app

#Copy my application files from host machine into image file system
COPY target/docker-helloworld-1.0-SNAPSHOT.jar  app.jar

#Run jar file
ENTRYPOINT ["java","-jar","app.jar"]
#CMD java -jar app.jar

#Use below command for buid a dokcker image (Here . means Dockerfile contains in the current directory)
#docker image  build -t hello-world:1.0 .

#Use below command for run above docker image
#docker container run hello-world:1.0