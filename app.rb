module Website
  class Home < Sinatra::Base
    
    configure :development do
      register Sinatra::Reloader
    end
    
    get '/' do
      'hello there!'
    end
  end
end
