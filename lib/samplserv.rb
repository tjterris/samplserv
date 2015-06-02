require 'sinatra'

require "samplserv/version"

module Samplserv
  # Your code goes here...
end

post '/harder' do
  v = params['v'] ? params['v'].to_i : 1
  spawn("afplay path/to/Harder#{v}.mp3")
end
