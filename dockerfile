FROM ruby:2.4

RUN apt-get update
RUN apt-get install -y nodejs
RUN gem install rails
RUN rails new app
RUN echo "gem 'bootstrap-sass', '3.3.7'" >> /app/Gemfile
RUN echo "gem 'bcrypt','3.1.12'" >> /app/Gemfile
RUN echo "gem 'sprockets','3.7.2'" >> /app/Gemfile
WORKDIR /app
RUN bundle update uglifier sprockets
RUN bundle install
EXPOSE 3000
CMD ["bin/rails server"]
