FROM ubuntu:14.04
MAINTAINER tobe tobeg3oogle@gmail.com
RUN apt-get update

# Install Java6
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java6-installer
ENV JAVA_HOME /usr/lib/jvm/java-6-oracle/

# Install tools
RUN apt-get install -y git
RUN apt-get install -y maven
RUN apt-get install -y emacs
RUN apt-get install -y vim
RUN apt-get install -y cmake
RUN apt-get install -y build-essential
RUN apt-get install -y tcpdump
RUN apt-get install -y tmux
RUN apt-get install -y mercurial
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y strace
RUN apt-get install -y gem
RUN apt-get install -y pip
RUN apt-get install -y ack-grep

# Install language
RUN apt-get install -y ruby
RUN apt-get install -y python
RUN apt-get install -y erlang
RUN apt-get install -y golang
#ENV GOROOT /usr/local/go

# Configuration files
ADD .vimrc /