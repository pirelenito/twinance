require 'twitter'

class Twit
  def self.find(keyword, size)
    twits = []
    Twitter::Search.new.containing(keyword).per_page(size).fetch.results.each do |r|
      twits.push Twit.new(r)
    end
    twits
  end
  
  def self.last(keyword)
    self.find(keyword, 1).first
  end
  
  def initialize(data)
    @data = data
  end
  
  def text
    @data.text
  end
  
  def created_at
    @data.created_at
  end
end