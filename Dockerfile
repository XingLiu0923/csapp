FROM ubuntu:18.04

# use other ubuntu mirrors, you can config it to others, some recommend sources can be
# `mirrors.ustc.edu.cn`, `mirrors.tuna.tsinghua.edu.cn`, `mirrors.aliyun.com`
RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

RUN apt-get install -y gdb make gcc wget

# use fantastic gbd config in https://github.com/cyrus-and/gdb-dashboard
RUN wget -P /root git.io/.gdbinit

WORKDIR /csapp