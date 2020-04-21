# README

This app will help connect parents with affordable after school activities for their children in a parent-to-parent rating system and teacher endorsements for quality assurance.

<iframe src="https://giphy.com/embed/KbS86XJWgp4ftZph7m" width="480" height="236" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/KbS86XJWgp4ftZph7m">via GIPHY</a></p>

## Tech Stack

*   Ruby on Rails
*   PostgreSQL
*   SQLite
*   HTML/CSS

## Getting Started

Clone this repository onto your local machine

Run `bundle install` to download all the necessary gems

Run `rails db:migrate` to create the database

Run `rails db:seed` to seed the database with data

Run `rails s` to start the app

## Features

Login or create an account as a parent or a teacher:

As a parent, you can... 

*   Search for an activity by entering an activity name, zip code, or keyword in the search bar and see a list of nearby affordable after school activities (read)
*   Search for a teacher’s username in the teacher search bar and see their endorsement lists of activities (read)
*   View the activity and see a list of ratings of that activity from other parents (read)
*   Write a rating for an activity (create)
*   Edit/delete your activity ratings (update/delete)

As a teacher, you can...

*   Search for an activity by entering an activity name, zip code, or keyword in the search bar and see a list of nearby affordable after school activities (read)
*   Search for a teacher’s username in the teacher search bar and see their endorsement lists of activities (read)
*   Add activities onto my endorsement list (create)
*   Delete activities off my endorsement list (delete)

## Implementations

Some features include password encryption, authorization, validations, nested routes, numerous user journeys, dynamic search, nested forms, and the Bootstrap CSS library.

## Tools

*   Bootstrap: CSS library
*   Faker: fake data generator

