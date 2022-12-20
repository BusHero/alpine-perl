FROM alpine:latest
RUN apk update \
	&& apk upgrade \
	&& apk add \
	curl \
	wget \
	perl \
	perl-dev \
	alpine-sdk

RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm XString
