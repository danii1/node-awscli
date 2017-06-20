FROM alpine:edge
MAINTAINER Daniil Pokrovsky

RUN apk add --no-cache \
  bash \
  curl \
  less \
  git \
  groff \
  python \
  nodejs \
  nodejs-npm \
  yarn \
  openssh-client \
  py-pip && \
  pip install --upgrade awscli s3cmd && \
  mkdir /root/.aws


VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments.
ENTRYPOINT ["bash"]
