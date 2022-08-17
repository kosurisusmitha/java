FROM ubuntu
ADD . /home/ubuntu
RUN apt-get -y update 
RUN apt-get -y upgrade
RUN apt-get install -y openjdk-11-jdk
RUN apt-get install -y maven
RUN apt-get install net-tools
WORKDIR /home/ubuntu/demo
RUN mvn clean
RUN mvn install
WORKDIR /home/ubuntu/demo/target
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar", "&"]
