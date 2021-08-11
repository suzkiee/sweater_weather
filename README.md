# Sweater Weather 

This is the back-end of a hypothetical application to plan road trips. This app will allow users to see the current weather as well as the forecasted weather at the destination.

I used these [user stories](https://backend.turing.edu/module3/projects/sweater_weather/requirements) as a guide to how the front end will communicate with back-end through an API. 

### Learning Goals of Project 

- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Expose an API for CRUD functionality
- Determine completion criteria based on the needs of other developers
- Research, select, and consume an API based on your needs as a developer

### Database Schema
![Screen Shot 2021-08-10 at 8 59 23 PM](https://user-images.githubusercontent.com/70981102/128953870-0b631c97-480e-4cbb-a913-3552d784b4a1.png)

### Getting Started

These instructions will give you a copy of the project up and running on
your local machine for development and testing purposes.

## Local Setup

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Setup the database: `rails db:create`
4. Run migrations: ` rails db:migrate`
6. Create an account with [Open Weather Map](https://home.openweathermap.org/users/sign_up) and request an API key
7. Create an account with [Geocode Address](https://developer.mapquest.com/documentation/geocoding-api/address/get/) and request an API key
8. Create an account with [Unsplash](https://unsplash.com/developers) and request an API key
9. Install the Figaro gem: `bundle exec figaro install`
10. Add your API key to the `application.yml` created by Figaro:
  ```rb
  MAPQUEST_KEY: your_api_key
  OPENWEATHER_KEY: your_api_key
  UNSPLASH_KEY: your_api_key
  ```

## Versions

- Ruby 2.7.2

- Rails 5.2.6

## Important Gems
Testing
* [rspec-rails](https://github.com/rspec/rspec-rails)
* [capybara](https://github.com/teamcapybara/capybara)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [simplecov](https://github.com/simplecov-ruby/simplecov)
* [webmock](https://github.com/bblimke/webmock)
* [vcr](https://github.com/vcr/vcr)

API Consumption
* [faraday](https://github.com/lostisland/faraday)
* [figaro](https://github.com/laserlemon/figaro)
* [jsonapi-serializer](https://github.com/fotinakis/jsonapi-serializers)

## Running the tests

Run `bundle exec rspec` to run the test suite
