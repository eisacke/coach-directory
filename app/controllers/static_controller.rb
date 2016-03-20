class StaticController < ApplicationController
  def home
    @search = Search.new
  end
end