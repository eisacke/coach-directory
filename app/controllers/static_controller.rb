class StaticController < ApplicationController
  def home
    @search = Search.new
    @body_id = "home"
  end

  def about
    
  end
end