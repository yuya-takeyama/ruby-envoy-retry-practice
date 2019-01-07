FROM ruby:2.5.3-alpine

WORKDIR /app
RUN gem install bundler && \
    apk add --update build-base
ADD Gemfile Gemfile.lock /app/
RUN bundle install
