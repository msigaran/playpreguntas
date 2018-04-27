require 'sinatra'
require './lib/Preguntas.rb'

get '/' do
	preguntas = Preguntas.new
	@primeraPregunta = preguntas.preguntas
    erb :playpreguntas
end

post '/playpreguntas' do
	playPreguntas = Preguntas.new
	@resultado ="correcta"
	erb :playpreguntas
end
