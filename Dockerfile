# Build sage-5.12 from source, and put it in a container
from ubuntu
maintainer Christopher Swenson <chris@caswenson.com>

# base ubuntu stuff
run echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run apt-get update
run apt-get upgrade -y
run apt-get install -y build-essential
run apt-get install -y ca-certificates
run apt-get install -y m4
run apt-get install -y curl
run curl -Lso /tmp/sage-5.12.tar http://boxen.math.washington.edu/home/sagemath/sage-mirror/src/sage-5.12.tar
run tar xvf /tmp/sage-5.12.tar
run cd sage-5.12 && make
# warm up
run sage-5.12/sage -c 'quit()'
entrypoint sage-5.12/sage
