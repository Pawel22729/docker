FROM centos

RUN yum update -y
RUN yum install java -y

ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war /opt/
WORKDIR /opt/
CMD ["java", "-jar", "jenkins.war", "--httpPort=8080"]

EXPOSE 8080
