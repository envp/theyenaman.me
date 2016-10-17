require 'slim/include'

require_relative 'lib/helpers/application_helper.rb'

module Website
  class Home < Sinatra::Base
    register Sinatra::Contrib
    
    helpers ApplicationHelper
    
    configure :development do
      register Sinatra::Reloader
      Slim::Engine.options[:pretty] = true
    end
    
    get '/' do
      slim :index
    end
    
    get '/cv' do
      path = 'files/curriculum_vitae_-_vaibhav_yenamandra.pdf'
      
      send_file static_file(path), type: "application/pdf"
    end
  end
end
