FROM ubuntu:trusty
MAINTAINER Feng Honglin <hfeng@tutum.co>

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update -y && apt-get install --no-install-recommends -y -q curl build-essential ca-certificates git mercurial bzr
RUN mkdir /goroot && curl https://storage.googleapis.com/golang/go1.3.1.linux-amd64.tar.gz | tar xvzf - -C /goroot --strip-components=1
RUN mkdir /gopath

ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN go get -v github.com/spf13/hugo
RUN go install github.com/spf13/hugo

ADD . /site-source
RUN cd /site-source && hugo --baseUrl="http://localhost" --source="./src" --config="./src/config.toml"

RUN cp -r /site-source/src/public /app/

RUN cp -r /site-source/src/uploads /var/uploads/


RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD ./src/sites-enabled/ /etc/nginx/sites-enabled/
ADD ./src/auth/ /etc/nginx/auth/

EXPOSE 80

CMD ["/usr/sbin/nginx"]