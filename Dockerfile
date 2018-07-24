FROM registry.access.redhat.com/rhscl/php-71-rhel7

# Update the image with the latest packages (recommended)
RUN yum update -y; yum clean all

# Install Apache Web Server
RUN yum install -y graphviz; yum clean all

