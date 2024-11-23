MAINTAINER Alessandro Rossi <al.rossi87@gmail.com>
FROM quay.io/kubealex/rhel-image-mode-demo:soe
RUN dnf install -y java-11-openjdk.x86_64 mariadb-server
RUN systemctl enable mariadb
RUN rm /usr/bin/java && ln -s /usr/lib/jvm/jre-11-openjdk/bin/java /usr/bin/java
COPY files/*.jar /opt/spring-petclinic.jar
COPY files/petclinic.service /usr/lib/systemd/system/petclinic.service
COPY files/petclinic.sql /opt/petclinic.sql
COPY files/load_application_data.sh /usr/local/bin
COPY files/load-data.service /usr/lib/systemd/system/load-data.service
RUN chmod 755 /usr/local/bin/load_application_data.sh
RUN systemctl enable petclinic load-data
