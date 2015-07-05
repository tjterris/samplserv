require 'sinatra'

require "samplserv/version"

helpers do
  def play_sample(sample)
    v = params['v'] ? params['v'].to_i : 1
    spawn("afplay samples/#{sample}#{v}.mp3")
  end
end

get '/stop' do
  spawn("killall afplay")
end

post '/after' do
  play_sample("After")
end

post '/better' do
  play_sample("Better")
end

post '/doit' do
  play_sample("DoIt")
end

post '/ever' do
  play_sample("Ever")
end

post '/faster' do
  play_sample("Faster")
end

post '/harder' do
  play_sample("Harder")
end

post '/hour' do
  play_sample("Hour")
end

post '/makeit' do
  play_sample("MakeIt")
end


post '/morethan' do
  play_sample("MoreThan")
end


post '/never' do
  play_sample("Never")
end


post '/our' do
  play_sample("Our")
end


post '/over' do
  play_sample("Over")
end


post '/stronger' do
  play_sample("Stronger")
end


post '/workis' do
  play_sample("WorkIs")
end


post '/workit' do
  play_sample("WorkIt")
end

post '/beat' do
  spawn("afplay samples/beat.mp3")
end

post '/after' do
  play_sample("After")
end

post '/better' do
  play_sample("Better")
end

post '/doit' do
  play_sample("DoIt")
end

post '/ever' do
  play_sample("Ever")
end

post '/faster' do
  play_sample("Faster")
end

post '/harder' do
  play_sample("Harder")
end

post '/hour' do
  play_sample("Hour")
end

post '/makeit' do
  play_sample("MakeIt")
end


post '/morethan' do
  play_sample("MoreThan")
end


post '/never' do
  play_sample("Never")
end


post '/our' do
  play_sample("Our")
end


post '/over' do
  play_sample("Over")
end


post '/stronger' do
  play_sample("Stronger")
end


post '/workis' do
  play_sample("WorkIs")
end


post '/workit' do
  play_sample("WorkIt")
end

post '/beat' do
  spawn("afplay samples/beat.mp3")
end
