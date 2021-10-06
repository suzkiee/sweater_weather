![Frame 2](https://user-images.githubusercontent.com/70981102/135905245-917272a9-fea5-4e4d-8316-dc8ebeca16c2.png)

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


| Request Type  | URI           |  
| ------------- | ------------- |
| GET  |  /api/v1/forecast?location={location}  |
| GET  |  /api/v1/backgrounds?location={location} |
| GET |  /api/v1/breweries?location={location}&quantity={quantity} |
| POST | /api/v1/users |
| POST | /api/v1/sessions |
| POST | /api/v1/road_trip | 

Below are details on how to use each endpoint and the relevant Front End wireframes.

#### Application Landing Page

<img width="912" alt="Screen Shot 2021-10-05 at 12 29 35 PM" src="https://user-images.githubusercontent.com/70981102/136065244-b4fc924d-c66e-4d1d-b153-d7b863fc05bf.png">

| Request Type | URI           | Description  | 
| ------------- | ------------- | ------------ | 
| GET  |  /api/v1/forecast?location={location}  |Returns current forecast for given location. Location must be sent as 'city, state abbreviation' like 'Boston, MA' or 'New York, NY' | 
| GET  |  /api/v1/backgrounds?location={location} | Returns url and details of a background image to display for given location. Location must be sent as 'city, state abbreviation' like 'Boston, MA' or 'New York, NY' |

Request: 
```ruby 
GET /api/v1/forecast?location=denver,co
Content-Type: application/json
Accept: application/json
``` 

Response: 
```ruby 
{
  "data": {
    "id": null,
    "type": "forecast",
    "attributes": {
      "current_weather": {
        "datetime": "2020-09-30 13:27:03 -0600",
        "temperature": 79.4,
        etc
      },
      "daily_weather": [
        {
          "date": "2020-10-01",
          "sunrise": "2020-10-01 06:10:43 -0600",
          etc
        },
        {...} etc
      ],
      "hourly_weather": [
        {
          "time": "14:00:00",
          "conditions": "cloudy with a chance of meatballs",
          etc
        },
        {...} etc
      ]
    }
  }
}
```

Request: 
```ruby 
GET /api/v1/backgrounds?location=boston,ma
Content-Type: application/json
Accept: application/json
```

Response: 
```ruby 
{
    "data": {
        "id": null,
        "type": "image",
        "attributes": {
            "info": {
                "location": "boston,ma",
                "image_url": "https://images.unsplash.com/photo-1569259907653-1bf37acbcac9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNTEwMzZ8MHwxfHNlYXJjaHwxfHxib3N0b24lMkNtYXxlbnwwfHx8fDE2MzMzNzIwNzQ&ixlib=rb-1.2.1&q=80&w=1080",
                "credit": {
                    "source": "unsplash.com",
                    "author": "redaska",
                    "logo": "https://images.unsplash.com/profile-1570635599993-4aeaa2f37308image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64"
                }
            }
        }
    }
}
```

#### User Registration 

<img width="1151" alt="Screen Shot 2021-10-05 at 12 38 28 PM" src="https://user-images.githubusercontent.com/70981102/136065638-216381b4-5f70-4fcc-96e0-e6d1f8eb2a16.png">

| Request  | URI           | Description  |
| ------------- | ------------- | ------------ |
| POST | /api/v1/users | A post request can be sent to the above uri, sending over the email, password, and password confirmation in the body of the request as JSON. If successful, create a user in your database, and generate a unique api key associated with that user, with a 201 status code. The response should NOT include the password in any form. Must include email, password and password confirmation. |

Request:
```ruby
POST /api/v1/users
Content-Type: application/json
Accept: application/json

{
  "email": "whatever@example.com",
  "password": "password",
  "password_confirmation": "password"
}
```

Response:
```ruby 
{
  "data": {
    "type": "users",
    "id": "1",
    "attributes": {
      "email": "whatever@example.com",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
  }
}
```

#### User Login 

<img width="1146" alt="Screen Shot 2021-10-05 at 12 31 57 PM" src="https://user-images.githubusercontent.com/70981102/136065818-ebd057a7-c386-4a90-8c92-7b9d88ae4c4c.png">

| Request  | URI           | Description  |
| ------------- | ------------- | ------------ |
| POST | /api/v1/sessions | A post request can be sent to the above uri, sending over email and password in the body of the request as JSON. If successful, it will return the given user's email and api_key. Must include email and password. |

Request: 
```ruby
POST /api/v1/sessions
Content-Type: application/json
Accept: application/json

{
  "email": "whatever@example.com",
  "password": "password"
}
```

Response:
```ruby
{
  "data": {
    "type": "users",
    "id": "1",
    "attributes": {
      "email": "whatever@example.com",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
  }
}
```

### Roadtrip 

<img width="1057" alt="Screen Shot 2021-10-05 at 12 32 14 PM" src="https://user-images.githubusercontent.com/70981102/136065780-9d81698a-3217-472f-add7-5aff73d49ae4.png">

| Request  | URI           | Description  |
| ------------- | ------------- | ------------ |
|POST | /api/v1/road_trip | A post request can be sent to the above uri, sending over an origin (ex. 'Boston, MA'), a destination (ex. 'Denver, CO'), and a valid api key in the body of the request. If the locations are able to be traversed via car, and the api key is valid, the response will send the destination and origin city, total travel time, and estimated weather upon arrival at destination city. Must include both origin and destination city and valid api key|

Request: 
```ruby
POST /api/v1/road_trip
Content-Type: application/json
Accept: application/json

body:

{
  "origin": "Denver,CO",
  "destination": "Pueblo,CO",
  "api_key": "jgn983hy48thw9begh98h4539h4"
}
```

Response: 
```ruby 
{
  "data": {
    "id": null,
    "type": "roadtrip",
    "attributes": {
      "start_city": "Denver, CO",
      "end_city": "Estes Park, CO",
      "travel_time": "2 hours, 13 minutes"
      "weather_at_eta": {
        "temperature": 59.4,
        "conditions": "partly cloudy with a chance of meatballs"
      }
    }
  }
}
```

#### Breweries 

| Request  | URI           | Description  |
| ------------- | ------------- | ------------ |
| GET |  /api/v1/breweries?location={location}&quantity={quantity} | Returns list of open breweries in given location and the current weather forecast in that city. Location must be sent as 'city, state abbreviation' like 'Boston, MA' or 'New York, NY'. Quantity must be a positive number. |

Request:
```ruby 
GET /api/v1/breweries?location=denver,co&quantity=10
Content-Type: application/json
Accept: application/json
```

Response:
```ruby
{
    "data": {
        "id": "null",
        "type": "breweries",
        "attributes": {
            "destination": "boston, ma",
            "forecast": {
                "summary": "overcast clouds",
                "temperature": "-355 F"
            },
            "breweries": [
                {
                    "id": 10118,
                    "name": "Democracy Brewing",
                    "brewery_type": "brewpub"
                },
                {
                    "id": 14371,
                    "name": "Slesar Bros Brewing Co - Boston Beer Works",
                    "brewery_type": "brewpub"
                },
                {
                    "id": 12636,
                    "name": "Mighty Squirrel",
                    "brewery_type": "contract"
                },
                {
                    "id": 11341,
                    "name": "Harpoon Brewery",
                    "brewery_type": "regional"
                },
                {
                    "id": 14447,
                    "name": "Somerville Brewing Company",
                    "brewery_type": "micro"
                },
                {
                    "id": 9686,
                    "name": "Cheeky Monkey Brewing Co / Lucky Strike Jillians",
                    "brewery_type": "brewpub"
                },
                {
                    "id": 12835,
                    "name": "Mystic Brewery",
                    "brewery_type": "micro"
                },
                {
                    "id": 10246,
                    "name": "Dorchester Brewing Company",
                    "brewery_type": "micro"
                },
                {
                    "id": 10261,
                    "name": "Down the Road Brewery",
                    "brewery_type": "micro"
                },
                {
                    "id": 14372,
                    "name": "Slesar Bros Brewing Co - Boston Beer Works",
                    "brewery_type": "brewpub"
                }
            ]
        }
    }
}
```

## Running the tests

Run `bundle exec rspec` to run the test suite
