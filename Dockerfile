FROM golang:1.7

RUN mkdir -p /usr/local/test
COPY test.sh /usr/local/test

WORKDIR /usr/local/test

CMD ./test.sh
