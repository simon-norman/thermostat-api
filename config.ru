require_relative './app.rb'
require 'active_record'

ActiveRecord::Base.establish_connection(ENV['THERMOSTAT_DB_URL'])

run ThermostatApi
