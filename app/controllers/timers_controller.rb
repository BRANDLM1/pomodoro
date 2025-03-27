class TimersController < ApplicationController
  def home
  end

  def start

    @session_time = (params[:session_time] || 25).to_i
    @break_time = (params[:break_time] || 5).to_i
    @color = (params[:color] || "red")

    unless ["red", "blue", "green", "yellow", "orange", "purple"].include?@color
      @color = red
    end
  end
end
