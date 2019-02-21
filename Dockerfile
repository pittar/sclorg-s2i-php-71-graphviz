# FROM registry.access.redhat.com/rhscl/php-72-rhel7
FROM centos/php-72-centos7

USER root

ENV POSTGRESQL_VERSION=9.6

# Add Postgres repo
#RUN yum install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-redhat96-9.6-3.noarch.rpm -y && \
#    yum update -y; yum clean all && \
#    yum install postgresql96 graphviz -y && \
#    yum clean all

# Update the image with the latest packages (recommended)
RUN yum update -y; yum clean all

# Install Apache Web Server
RUN yum install -y rh-postgresql96-postgresql-contrib rh-postgresql95-postgresql-server graphviz; yum clean all

USER 1001
