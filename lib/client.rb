require 'pry'
require 'httparty'

class SamplParty
  include HTTParty
  base_uri "http://localhost:4567"

  def get_options(version)
    options = {}
    if version
      options = {query: {v: version}}
    end
    options
  end

  def play_sample(sample, version=nil)
    self.class.post("/#{sample}", get_options(version))
  end

  def play_beat
    self.class.post("/beat")
  end

end

sampl = SamplParty.new

  sampl.play_sample("workit")

  sleep(0.95)
  sampl.play_sample("makeit")
  sleep(0.96)
  sampl.play_sample("doit")
  sleep(0.96)
  sampl.play_sample("makesus")
  sleep(5.3)
  sampl.play_sample("harder")
  sleep(0.96)
  sampl.play_sample("better")
  sleep(0.96)
  sampl.play_sample("faster")
  sleep(0.95)
  sampl.play_sample("stronger")
  sleep(4.35)

  sampl.play_sample("morethan")

  sleep(0.96)
  sampl.play_sample("hour")
  sleep(0.96)
  sampl.play_sample("our")
  sleep(0.96)
  sampl.play_sample("never")
  sleep(5.4)
  sampl.play_sample("ever")
  sleep(0.96)
  sampl.play_sample("after")
  sleep(0.96)
  sampl.play_sample("workis")
  sleep(0.96)
  sampl.play_sample("over")

  sampl.play_beat

  sleep(46.43)
  intro(sampl)
  sleep(4.35)
  sampl.play_sample("workit")
  sleep(0.96)
  sampl.play_sample("makeit")
  sleep(0.96)
  sampl.play_sample("doit")
  sleep(0.96)
  sampl.play_sample("makesus")
  sleep(5.3)
  sampl.play_sample("harder")
  sleep(0.96)
  sampl.play_sample("better")
  sleep(0.96)
  sampl.play_sample("faster")
  sleep(0.95)
  sampl.play_sample("stronger")
  sleep(4.4)
