FROM kalilinux/kali-linux-docker

WORKDIR /root

COPY .bashrc /root/.bashrc

RUN [ "apt-get", "update" ]
RUN [ "apt-get", "install", "wget", "-y" ]
RUN [ "apt-get", "install", "less", "-y" ]
RUN [ "apt-get", "install", "unzip", "-y" ]
RUN [ "apt-get", "install", "binutils", "-y" ]
RUN [ "apt-get", "install", "tcpdump", "-y" ]
RUN [ "apt-get", "install", "tcpspy", "-y" ]
RUN [ "apt-get", "install", "tcpstat", "-y" ]
RUN [ "apt-get", "install", "tcptrace", "-y" ]
RUN [ "apt-get", "install", "net-tools", "-y" ]

WORKDIR /root/myspace
