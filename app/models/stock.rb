require 'yahoofinance'

class Stock
  attr_reader :symbol
  
  def initialize(symbol)
    update(symbol)
  end
  
  def value
    @quote.lastTrade
  end
  
  def change
    @quote.changePercent
  end
  
  def last_twit
    Twit.last(@symbol.split('.')[0])
  end
  
  def history(pastDays)
    YahooFinance::get_HistoricalQuotes_days(@symbol, pastDays)
  end
  
  private
  
  def update(symbol)
    quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol).first
    @symbol = quote[0]
    @quote = quote[1]
  end
end