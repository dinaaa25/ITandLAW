FROM ruby:2.3

COPY . .

RUN gem install bundler -v 2.0.1
RUN bundle install

EXPOSE 4567

CMD ["rackup", "-p", "4567", "-o", "0.0.0.0"]