FROM ruby:2.4

RUN apt-get update
RUN apt-get install -y nodejs
# common gem
RUN gem install rails pg puma sass-rails uglifier coffee-rails turbolinks jbuilder bootsnap bcrypt bootstrap-sass
# dev-test gem
RUN gem install byebug web-console listen spring spring-watcher-listen capybara selenium-webdriver chromedriver-helper
# aditional gem
RUN gem install minitest rake

RUN mkdir /myapp
WORKDIR /myapp
