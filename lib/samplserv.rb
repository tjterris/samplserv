require 'sinatra'

require "samplserv/version"

module Samplserv
  # Your code goes here...
end

post '/beat' do
  spawn("afplay samples/beat.mp3")
end

get '/stop' do
  spawn("killall afplay")
end

post '/harder' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay samples/Harder#{v}.mp3")
end
