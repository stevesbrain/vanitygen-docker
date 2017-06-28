FROM ubuntu:14.04
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential libtool autotools-dev autoconf libssl-dev libdb-dev libdb++-dev libboost-all-dev libpcre3 libpcre3-dev automake git && \
  DEBIAN_FRONTEND=noninteractive apt-get remove --purge -y build-essential libtool autotools-dev autoconf libssl-dev libdb-dev libdb++-dev libboost-all-dev libpcre3 libpcre3-dev automake git && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /root
RUN git clone https://github.com/samr7/vanitygen
WORKDIR /root/vanitygen
RUN make

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
