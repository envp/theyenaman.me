require 'sinatra/base'
require 'sinatra/contrib'

module Website
  class Home < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
      Slim::Engine.options[:pretty] = true
    end
    
    get '/' do
      slim :index
    end
    
    get '/about' do
      'Work in progress :)'
    end
    
    get '/blog' do
      'Work in progress :)'
    end
  end
end
