require 'sinatra/base'

class Dict < Sinatra::Application
    get '/' do 
        'Say: Hello World!!!'
    end
end

