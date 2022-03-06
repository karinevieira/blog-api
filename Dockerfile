FROM ruby:2.5.8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /blog-api
WORKDIR /blog-api
ADD Gemfile /blog-api/Gemfile
ADD Gemfile.lock /blog-api/Gemfile.lock
RUN bundle install
ADD . /blog-api