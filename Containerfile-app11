MAINTAINER Alessandro Rossi <al.rossi87@gmail.com>
FROM quay.io/kubealex/rhel-image-mode-demo:soe
RUN dnf install -y java-11-openjdk.x86_64 mariadb-server
RUN systemctl enable mariadb
RUN ln -s /usr/lib/jvm/java-11-openjdk-11.0.22.0.7-2.el9.x86_64/bin/java /usr/bin/java
COPY files/*.jar /opt/spring-petclinic.jar
COPY files/petclinic.service /usr/lib/systemd/system/petclinic.service
RUN systemctl enable petclinic
