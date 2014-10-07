FROM centos:centos6

# add EPEL repo
RUN yum -y install http://mirror.pnl.gov/epel/6/i386/epel-release-6-8.noarch.rpm

# install essential programs 
# - tar, which, git, vim, sudo
RUN yum -y update && \
    yum install tar which git vim-minimal sudo && \
    yum clean all

# Disable requiretty for sudo access
RUN  sed -i "s/Defaults    requiretty.*/ #Defaults    requiretty/g" /etc/sudoers