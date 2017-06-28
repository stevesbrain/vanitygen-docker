FROM alpine:3.6
MAINTAINER VanityShed

ENV GIT_URL https://github.com/samr7/vanitygen
ENV REFRESHED_AT 2017-06-28

# install dependencies
RUN set -x \
<<<<<<< HEAD
	&& apk add --no-cache --virtual git libqrencode openssl-dev bash pcre-dev gegl-dev build-base build-dependencies alpine-sdk
=======
	&& apk add --no-cache --virtual git libqrencode openssl-dev bash pcre-dev gegl-dev build-base
>>>>>>> parent of bd94917... Missing make utils

# create code directory
WORKDIR /root
RUN git clone $GIT_URL
WORKDIR /root/vanitygen
RUN make

ENTRYPOINT ["/root/vanitygen/vanitygen"]
CMD ["--help"]
