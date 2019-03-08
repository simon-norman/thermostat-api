require 'sinatra/base'
require './lib/temperature'

class ThermostatApi < Sinatra::Base
  get '/temperature' do
    content_type :json
    Temperature.all.last.to_json
  end

  run! if app_file == $0
end
