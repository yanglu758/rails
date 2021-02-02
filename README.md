# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## Ruby version

>= ruby 2.6.3

## Database creation
```
rails db:create
rails db:migrate
```

## Database initialization
Put a CSV `intial_data.csv` under project root folder, and then run
```
rails db:seed
```

## Start server
```
rails s
```

## Usage
- To access People: `localhost:3000/people`
- To access Locations: `localhost:3000/locations`
- To access relationship between People and Locations: `localhost:3000/person_locations`
- To access relationship between People and Affiliations: `localhost:3000/person_affiliations`
