class DashboardController < ApplicationController
  def add
    session[:symbols] << params['symbol']
    redirect_to :action => :index
  end
  
  def clear
    session[:symbols] = []
    redirect_to :action => :index
  end
  
  def index
    clear unless session[:symbols]
    
    @stocks = []
    session[:symbols].each { |s| @stocks << Stock.new(s) }
  end
end
