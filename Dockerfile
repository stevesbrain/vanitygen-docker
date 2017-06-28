FROM alpine:3.6
MAINTAINER VanityShed

ENV GIT_URL https://github.com/samr7/vanitygen
ENV REFRESHED_AT 2017-06-28

# install dependencies
RUN set -x \
	&& apk add --no-cache git libqrencode openssl-dev bash pcre-dev gegl-dev build-base \
	&& cd /root \
	&& git clone $GIT_URL \
	&& cd /root/vanitygen \
	&& make \
	&& apk del --purge git libqrencode openssl-dev bash pcre-dev gegl-dev build-base

# create code directory
#WORKDIR /root
#RUN git clone $GIT_URL
#WORKDIR /root/vanitygen
#RUN /usr/bin/make

ENTRYPOINT ["/root/vanitygen/vanitygen"]
CMD ["--help"]
