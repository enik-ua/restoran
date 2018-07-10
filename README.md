# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

  Ruby 2.4

* System dependencies

  Rails 5.2
  Postgres

* Configuration

  sudo git clone https://github.com/enik-ua/restoran.git

  cd restoran

  sudo docker-compose build --no-cache

  sudo docker-compose run web rails db:setup

  sudo docker-compose run web rails db:fixtures:load

  sudo docker-compose up


* Database creation

  sudo docker-compose run web rails db:create

* Database initialization

  sudo docker-compose run web rails db:migrate

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
