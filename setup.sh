#!/bin/sh

bundle install
rails g rspec:install
bundle exec spork --bootstrap
bundle install --binstubs
