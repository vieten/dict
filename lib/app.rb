require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require 'sinatra/activerecord'
require '../dict/config/environments.rb'
require '../dict/models/lemma.rb'

class Dict < Sinatra::Application
    get '/' do 
        @lemmas = Lemma.all
        erb :index
    end

    post '/' do 
        @lemma = Lemma.new(word: params[:word], part_of_speech: params[:part_of_speech])
        if @lemma.save
            redirect '/'
        else
            "Das Wort konnte nicht gespeichert werden."
            #erb :storefail
        end
    end
end

