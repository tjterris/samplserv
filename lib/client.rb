require 'pry'
require 'httparty'

class SamplParty
  include HTTParty
  base_uri "http://localhost:4567"

  def play_harder(version=nil)
    options = {}
    if version
      options = { query: { v: version } }
    end
    self.class.post("/harder", options)
  end

  def play_beat
    self.class.post("/beat")
  end
end

toy = SamplParty.new
toy.play_beat
sleep 5
toy.play_harder(2)
sleep 0.5
toy.play_harder
sleep 1
toy.play_harder
toy.play_harder(2)
sleep 1
toy.play_beat
sleep 1
toy.play_beat

puts "Cool cool cool ..."
