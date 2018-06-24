FROM ruby:2.5.1
RUN gem install bundler
RUN curl -sL https://deb.nodesource.com/setup_10.x |bash -
RUN apt-get install -y nodejs
RUN mkdir /app
WORKDIR /app
COPY . /app
CMD bundle exec rails s
ENTRYPOINT ["./start-bundle-exec.sh"]
