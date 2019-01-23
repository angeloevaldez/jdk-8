FROM centos
MAINTAINER Angelo E. Valdez <angeloe.valdez@gmail.com>

RUN yum update -y && yum install -y wget && yum install unzip
RUN wget --no-cookies --no-check-certificate --header \
"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
"https://download.oracle.com/otn-pub/java/jdk/8u201-b09/42970487e3af4f5aa5bca3f542482c60/jdk-8u201-linux-x64.rpm"
RUN  yum localinstall jdk-8u201-linux-x64.rpm -y
ENV JAVA_HOME=/usr/java/latest
ENV JRE_HOME=/usr/java/latest/jre
ENV PATH=$JAVA_HOME/bin:$PATH
RUN rm jdk-8u201-linux-x64.rpm && yum clean all




