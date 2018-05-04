FROM ivene/centos:7.1
MAINTAINER ivene

ENV DATA_DIR /var/lib/mysql

# Install Mariadb
RUN rpm --rebuilddb && \
	yum install -y mariadb mariadb-server && \
    yum clean all

ADD mysqld_charset.cnf /etc/my.cnf.d/

COPY scripts /scripts
RUN chmod +x /scripts/start

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/scripts/start"]
