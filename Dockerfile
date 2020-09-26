FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
		build-essential \
		libpq-dev \
		nodejs \
		postgresql-client \
		yarn

WORKDIR /copy_sentence
COPY Gemfile Gemfile.lock /copy_sentence/
RUN bundle install
