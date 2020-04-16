FROM ubuntu:18.04
RUN apt update && apt install -y git maven
WORKDIR /var
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /var/boxfuse
RUN mvn package

