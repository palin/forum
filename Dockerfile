FROM ruby:3.1.2

LABEL maintainer="github.com/palin"

RUN apt-get update && \
  apt-get install -y \
  vim \
  libvips

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app/

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
