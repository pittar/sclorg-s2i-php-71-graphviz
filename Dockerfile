FROM registry.access.redhat.com/rhscl/php-72-rhel7

USER root

# Add Postgres repo
RUN yum install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-redhat96-9.6-3.noarch.rpm -y && \
    yum update -y; yum clean all && \
    yum install postgresql96 graphviz -y && \
    yum clean all

USER 1001
