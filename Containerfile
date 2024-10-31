MAINTAINER Alessandro Rossi <al.rossi87@gmail.com>
FROM service-vm.rh-lab.labs:3000/gitea/rhel-image-mode-demo:iso
RUN dnf -y install httpd && \
    systemctl enable httpd && \
    mv /var/www /usr/share/www && \
    sed -ie 's,/var/www,/usr/share/www,' /etc/httpd/conf/httpd.conf
RUN echo "Welcome to the bootc-http instance!" > /usr/share/www/html/index.html
EXPOSE 80
