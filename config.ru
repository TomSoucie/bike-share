require 'bundler'

Bundler.require

require File.expand_path('../config/environment',  __FILE__)

run BikeShareApp
use StationsController
use ConditionsController
