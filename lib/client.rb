require 'pry'
require 'httparty'

class SamplParty
  include HTTParty
  base_uri "http://localhost:4567"

  def get_options(version=nil)
    options = {}
    if version
      options = { query: { v: version } }
    end
    options
  end

  def play_after(verson=nil)
    options = self.get_options(verson)
    self.class.post("/after", options)
  end

  def play_better(verson=nil)
    options = self.get_options(verson)
    self.class.post("/better", options)
  end

  def play_doit(verson=nil)
    options = self.get_options(verson)
    self.class.post("/doit", options)
  end

  def play_ever(verson=nil)
    options = self.get_options(verson)
    self.class.post("/ever", options)
  end

  def play_faster(verson=nil)
    options = self.get_options(verson)
    self.class.post("/faster", options)
  end

  def play_harder(verson=nil)
    options = self.get_options(verson)
    self.class.post("/harder", options)
  end

  def play_hour(verson=nil)
    options = self.get_options(verson)
    self.class.post("/hour", options)
  end

  def play_makeit(verson=nil)
    options = self.get_options(verson)
    self.class.post("/makeit", options)
  end

  def play_makesus(verson=nil)
    options = self.get_options(verson)
    self.class.post("/makesus", options)
  end

  def play_morethan(verson=nil)
    options = self.get_options(verson)
    self.class.post("/morethan", options)
  end

  def play_never(verson=nil)
    options = self.get_options(verson)
    self.class.post("/never", options)
  end

  def play_our(verson=nil)
    options = self.get_options(verson)
    self.class.post("/our", options)
  end

  def play_over(verson=nil)
    options = self.get_options(verson)
    self.class.post("/over", options)
  end

  def play_stronger(verson=nil)
    options = self.get_options(verson)
    self.class.post("/stronger", options)
  end

  def play_workis(verson=nil)
    options = self.get_options(verson)
    self.class.post("/workis", options)
  end

  def play_workit(verson=nil)
    options = self.get_options(verson)
    self.class.post("/workit", options)
  end

  def play_beat
    self.class.post("/beat")
  end
end

toy = SamplParty.new
toy.play_harder
sleep 3
toy.play_harder
sleep 3
toy.play_harder(2)
toy.play_beat
