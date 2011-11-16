class ApplicationController < ActionController::Base
  protect_from_forgery
  def get_r
    @r = RSRuby.instance
    @r.eval_R("source('lib/R/plot.R')")
    return @r
  end
end
