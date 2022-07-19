FROM ruby:3.0.3-slim-buster
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs cron

RUN mkdir /myapp
WORKDIR /myapp
RUN gem install bundler:2.3.9

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install
EXPOSE 3000
RUN useradd ruby
USER ruby
CMD ["rails", "s", "-b", "0.0.0.0"]
