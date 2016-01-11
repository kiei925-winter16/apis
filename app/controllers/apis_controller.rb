require 'open-uri'

class ApisController < ApplicationController

  def weather
    address = "https://api.forecast.io/forecast/6dbe98374cc5b8f9ea63d5ec73de9c04/42.056459,-87.675267"
    uri = URI.parse(URI.escape(address))
    string = open(uri).read
    @weather = JSON.parse(string)
  end

  def books
    address = "https://www.googleapis.com/books/v1/volumes?q=harry+potter"
    uri = URI.parse(URI.escape(address))
    string = open(uri).read
    @books = JSON.parse(string)    
  end

  def spotify
    address = "https://api.spotify.com/v1/search?q=katy+perry&type=album"
    uri = URI.parse(URI.escape(address))
    string = open(uri).read
    @spotify = JSON.parse(string)
  end

end