FROM kalilinux/kali-linux-docker

WORKDIR /root

COPY .bashrc /root/.bashrc

RUN [ "apt-get", "update" ]
RUN [ "apt-get", "install", "wget", "-y" ]
RUN [ "apt-get", "install", "less", "-y" ]
RUN [ "apt-get", "install", "unzip", "-y" ]
RUN [ "apt-get", "install", "binutils", "-y" ]

WORKDIR /root/myspace
