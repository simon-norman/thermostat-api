require 'sinatra/base'

class ThermostatApi < Sinatra::Base
  get '/register' do
    p 'stuff'
  end

  run! if app_file == $0
end
