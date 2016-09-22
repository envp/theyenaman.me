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
  end
end
