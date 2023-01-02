# README

* Ruby version 2.7.4

* Rails 7.0.4

## DEMO

* POST `https://githuber-api.herokuapp.com/v1/calculate_project` -- calculate some project

Params: {
     "owner_username": "rails",
     "project_name": "rails"
    }

* GET `https://githuber-api.herokuapp.com/v1/projects` -- check projects that already calculated

## CONFIGURATION

Into directory docker/vault/development create .env

Then insert variable into .env file (get variable from heroku)

Just install docker-sync

    gem install docker-sync

Then start docker-sync

    docker-sync start

(-optionals) If there is some kind of error most likely you just need to clean up docker-sync

    docker-sync clean

(-optionals) Then

    docker-sync start

Then start docker-compose

    docker-compose up --build

Get container id for image: cubitz-backend_web

    docker ps

Sign to container

    docker exec -it  <container_id> bash

And run create and migrate db

    rails db:create db:migrate

## TEST

Start docker-sync

    docker-sync start

(-optionals) If there is some kind of error most likely you just need to clean up docker-sync

    docker-sync clean
(-optionals) Then

    docker-sync start

Set .env file for test environment. Into directory docker/vault/test create .env
Then insert variable into .env file (get variable from heroku or from development team)

Now you can run tests

    docker-compose -f docker-compose.rspec.yml run web rspec

If you want to run some special test you can run this commands

    docker-compose -f docker-compose.rspec.yml run web rspec spec/requests/projects_controller_spec.rb
