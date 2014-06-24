FROM    centos:6.4

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm

RUN     yum install -y git

RUN mkdir ~/.ssh
#RUN ssh-keyscan github.com >> ~/.ssh/known_hosts

# Bundle app source
#ADD . /src

RUN git clone https://github.com/willshulman/hello-world-node2.git

# Install app dependencies
RUN cd /hello-world-node2; npm install .

EXPOSE  3000
CMD ["node", "/hello-world-node2/lib/server.js"]