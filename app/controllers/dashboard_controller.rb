class DashboardController < ApplicationController
  def index
    @stocks = [
      Stock.new('petr4.sa'), 
      Stock.new('ecod3.sa'),
      Stock.new('lame4.sa'), 
      Stock.new('milk11.sa'),
      Stock.new('vale5.sa'),
      Stock.new('itsa4.sa'),
      Stock.new('RSID3.sa'),
      Stock.new('natu3.sa')]
  end
end
