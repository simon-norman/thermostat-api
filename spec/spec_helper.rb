require 'simplecov'
require 'simplecov-console'
require 'rspec'
require './lib/temperature.rb'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console
])
SimpleCov.start

RSpec.configure do |config|
  # config.before(:each) do
  #   empty_database
  # end

  config.filter_run_when_matching :focus

  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end

ENV['RACK_ENV'] = 'test'

ActiveRecord::Base.establish_connection(ENV['THERMOSTAT_DB_URL'])
