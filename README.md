![Frame 2](https://user-images.githubusercontent.com/70981102/135905245-917272a9-fea5-4e4d-8316-dc8ebeca16c2.png)

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-this-project">About This Project</a>
      <ul>
        <li><a href="#learning-goals-of-project">Learning Goals of Project</a></li>
      </ul>
      <ul>
        <li><a href="#versions">Versions</a></li>
      </ul>
      <ul>
        <li><a href="#important-gems">Important Gems</a></li>
      </ul>
    </li>
    <li>
      <a href="#database-schema">Database Schema</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#endpoints">Endpoints</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About This Project

This is the back-end of a hypothetical application to plan road trips. This app will allow users to see the current weather as well as the forecasted weather at the destination.

I used these [user stories](https://backend.turing.edu/module3/projects/sweater_weather/requirements) as a guide to how the front end will communicate with back-end through an API. 

#### Learning Goals of Project 

- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Expose an API for CRUD functionality
- Determine completion criteria based on the needs of other developers
- Research, select, and consume an API based on your needs as a developer

#### Versions

- Ruby 2.7.2

- Rails 5.2.6

#### Important Gems
Testing: [rspec-rails](https://github.com/rspec/rspec-rails), [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers), [simplecov](https://github.com/simplecov-ruby/simplecov), [webmock](https://github.com/bblimke/webmock), [vcr](https://github.com/vcr/vcr)

API: [faraday](https://github.com/lostisland/faraday), [figaro](https://github.com/laserlemon/figaro), [jsonapi-serializer](https://github.com/fotinakis/jsonapi-serializers)

## Database Schema
![Screen Shot 2021-08-10 at 8 59 23 PM](https://user-images.githubusercontent.com/70981102/128953870-0b631c97-480e-4cbb-a913-3552d784b4a1.png)

## Getting Started

These instructions will give you a copy of the project up and running on
your local machine for development and testing purposes.

### Local Setup

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
## Endpoints 
All endpoints can be viewed by running the `rails server` command in your terminal. In your browswer, type in `http://localhost:3000/{endpoint_get_request}` You can also view the response in [Postman](https://www.postman.com/). Below are details about each endpoint and the type of response you can expect. 

| Request  | URI           | Description  |
| ------------- | ------------- | ------------ |
| GET  |  /api/v1/forecast?location={location}  |Returns current forecast for given location. Location must be sent as 'city, state abbreviation' like 'Boston, MA' or 'New York, NY' |
| GET  |  /api/v1/backgrounds?location={location} | Returns url and details of a background image to display for given location. Location must be sent as 'city, state abbreviation' like 'Boston, MA' or 'New York, NY' |
| GET |  /api/v1/breweries?location={location}&quantity={quantity} | Returns list of open breweries in given location and the current weather forecast in that city. Location must be sent as 'city, state abbreviation' like 'Boston, MA' or 'New York, NY'. Quantity must be a positive number. |
| POST | /api/v1/users | A post request can be sent to the above uri, sending over the email, password, and password confirmation in the body of the request as JSON. If successful, it will return the user's email and the api key they have been issued. Must include email, password and password confirmation. |
| POST | /api/v1/sessions | A post request can be sent to the above uri, sending over email and password in the body of the request as JSON. If successful, it will return the given user's email and api_key. Must include email and password. |
|POST | /api/v1/road_trip | A post request can be sent to the above uri, sending over an origin (ex. 'Boston, MA'), a destination (ex. 'Denver, CO'), and a valid api key in the body of the request. If the locations are able to be traversed via car, and the api key is valid, the response will send the destination and origin city, total travel time, and estimated weather upon arrival at destination city. Must include both origin and destination city and valid api key|

## Running the tests

Run `bundle exec rspec` to run the test suite
