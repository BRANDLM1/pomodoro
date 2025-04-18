class TimersController < ApplicationController
  def home
  end

  def settings
    # Initialize default settings or load saved settings
    @color = params[:color] || "red"
    @feeling = params[:feeling] || "focused"
    @theme = params[:theme] || "Light"
  end

  def start
    @session_time = (params[:session_time] || 25).to_i
    @break_time = (params[:break_time] || 5).to_i
    @feeling = (params[:feeling] || "focused")
    @theme = params[:theme] || "Light"

    puts "Theme selected: #{@theme}"
    puts "Color selected: #{@color}"

    # Validate color selection
    unless ["red", "blue", "green", "yellow", "orange", "purple"].include?(@color)
      @color = "red"
    end

    # Validate theme selection
    unless ["Light", "Peruvian Rainforest", "SPACE"].include?(@theme)
      @theme = "Light"
    end

    # Validate feeling selection
    unless ["focused", "relaxed", "motivated", "calm"].include?(@feeling)
      @feeling = "focused"
    end
  end
end