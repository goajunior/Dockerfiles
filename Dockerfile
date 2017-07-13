FROM ubuntu
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get  dist-upgrade
RUN adduser --disabled-password --gecos '' junior
RUN apt-get -y install vim
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
# RUN apt-get -y install libmesh-dev
RUN apt-get -y install bash-completion
RUN apt-get -y install sudo
RUN sudo usermod -a -G sudo junior
RUN pip3 install --upgrade pip
RUN pip3 install numpy
RUN pip3 install scipy
COPY .vim /home/junior/.vim
COPY vimrc-template /home/junior/.vimrc
