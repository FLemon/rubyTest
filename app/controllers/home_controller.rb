class HomeController < ApplicationController
  before_filter :get_r
  def index
    @conn = Mongo::Connection.new
    @db   = @conn['sample-db']
    @coll = @db['test']

    @coll.remove
    3.times do |i|
      @coll.insert({'a' => i+1})
    end
  end
  
  def show
    #@d = @r.round(@r.rnorm(10),:digit=>2)
    #@l = @r.range(-100,100,@d)
    @y = [2,11,19,29,41,70,88,152,205,410]
    @x = [1,2,3,4,5,6,7,8,9,10]
    
    @coeff = @r.myplot(@x,@y)
    
    
    # then read the png file and deliver it to the browser
    #File.new("public/image/curvtfit.png","w"){|f|f=File.open("/tmp/plot.png","rb")|b|b.read}.close
  end
end
