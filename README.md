# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



sudo docker build . -t my-app

sudo docker run --rm -it -v ${PWD}:/apphost -w /apphost --publish 3000:3000 my-app rails server