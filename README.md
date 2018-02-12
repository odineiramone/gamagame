# Gama Game

Have you ever played Gama Game? It's a game of general knowledge questions and answers. It used to be played at #gamagame, an IRC (Internet Relay Chat) channel in the Brasnet network, which no longer exists

## Made with

  - Ruby 2.5.0
  - Rails 5.1.4
  - Postgres :elephant:

## Setup

  - Run `bundle install` on terminal console
  - Rename `.env.sample` to `.env.development` and fill the options with your database information
  - Run `bundle exec rails db:setup` to create and populate database
  - Start rails server with `rails s` on console
  - Access `localhost:3000` on browser and ENJOY!

### To execute tests
  - Rename `.env.sample` to `.env.test` and fill the options with your database information
  - Run `RAILS_ENV=test bundle exec rails db:setup` to create and populate test database
  - Run `bundle exec rspec` to execute tests
