FROM ruby:2.5.3-alpine

WORKDIR /app
RUN gem install bundler
ADD Gemfile Gemfile.lock /app/
RUN bundle install

ADD . /app

CMD ["bundle", "exec", "rackup", "-p", "80", "-o", "0.0.0.0"]
