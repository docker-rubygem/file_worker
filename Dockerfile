FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.0

RUN gem install file_worker --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["file_worker"]
CMD ["--help"]
