#!/bin/sh

bundle install
rails g rspec:install
bundle install --binstubs
bundle exec spork --bootstrap