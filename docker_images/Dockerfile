# Dockerfile for creating a 32-bit linux installation with the required 
# dependencies for the Stanford Lagunita CS1 Compilers course
# https://lagunita.stanford.edu/courses/Engineering/Compilers/Fall2014/info
# Installation instructions pulled from here
# https://lagunita.stanford.edu/courses/Engineering/Compilers/Fall2014/6b750292e90d4950b895f621a5671b49/
FROM m0elnx/ubuntu-32bit

CMD apt-get update

# CS1 Requirements
CMD apt-get install -y bison\
                       build-essential\
                       csh\
                       flex\
                       libxaw7-dev\
                       openjdk-6-jdk

# Personal Customizations
CMD apt-get install -y git-all\
                       vim

CMD mkdir /usr/class
CMD chown root /usr/class
CMD cd /usr/class

WORKDIR /usr/class
CMD wget http://spark-university.s3.amazonaws.com/stanford-compilers/vm/student-dist.tar.gz
CMD tar -xf student-dist.tar.gz

CMD ln -s /usr/class/cs143/cool ~/cool
ENV PATH "/usr/class/cs143/cool/bin:$PATH"

VOLUME /Users/lknecht/Repositories/Stanford_CS1_Compilers:/root/repositories/stanford_lagunita_cs1_compilers

WORKDIR /root/repositories/stanford_lagunita_cs1_compilers