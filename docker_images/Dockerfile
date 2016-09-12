# Dockerfile for creating a 32-bit linux installation with the required 
# dependencies for the Stanford Lagunita CS1 Compilers course
# https://lagunita.stanford.edu/courses/Engineering/Compilers/Fall2014/info
# Installation instructions pulled from here
# https://lagunita.stanford.edu/courses/Engineering/Compilers/Fall2014/6b750292e90d4950b895f621a5671b49/
FROM m0elnx/ubuntu-32bit

RUN apt-get update

# CS1 Requirements
RUN apt-get install -y bison\
                       build-essential\
                       csh\
                       flex\
                       libxaw7-dev\
                       openjdk-6-jdk

# Personal Customizations
RUN apt-get upgrade -y &&\
    apt-get install --fix-missing -y git-all\
                                     vim\
                                     make\
                                     g++\
                                     flex\
                                     vim\
                                     csh

RUN mkdir /usr/class
RUN chown root /usr/class
RUN cd /usr/class

WORKDIR /usr/class
RUN wget http://spark-university.s3.amazonaws.com/stanford-compilers/vm/student-dist.tar.gz
RUN tar -xf student-dist.tar.gz

RUN ln -s /usr/class/cs143/cool ~/cool
ENV PATH "/usr/class/cs143/cool/bin:$PATH"
