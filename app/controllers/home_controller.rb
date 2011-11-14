class HomeController < ApplicationController
  def index
    require 'mongo'

    @conn = Mongo::Connection.new
    @db   = @conn['sample-db']
    @coll = @db['test']

    @coll.remove
    3.times do |i|
      @coll.insert({'a' => i+1})
    end

  end
end
