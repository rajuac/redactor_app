# README

This README documents the steps necessary to get the application up and running.

## Ruby version

- **Ruby 3.2.2**

## Rails version

- **Rails 7.2.1**

## System dependencies

- Ensure you have the correct version of Ruby installed (3.2.2).
- Install Rails 7.2.1 if it is not installed: `gem install rails -v 7.2.1`.
- Ensure you have the necessary database and system dependencies.

## Configuration

- The port the service presents on **should be configurable at runtime**.
  - You can specify the port when starting the application using the following command:
  
    rails s -p 8080
    

  - In the above command, `8080` is the port number. You can change it to any desired port.

## Running the Test Suite

To run the test suite, ensure you have RSpec installed. Use the following command:


bundle exec rspec