# README

This Rails app will calculate the impact simple lifestyle changes will have on  
your carbon footprint.

troubleshooting: rails webpacker:install
- then "rails s" should work.
Also rails new . has worked in past (not last time).

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

try this for timestamp (recommended for Rails:
  config/initializers/time_formats.rb
Date::DATE_FORMATS[:stamp] = "%Y%m%d" # YYYYMMDD
Time::DATE_FORMATS[:stamp] = "%Y%m%d%H%M%S" # YYYYMMDDHHMMSS
Then in the views.

<%= @user.last_signed_in_at.to_s(:stamp) %>
