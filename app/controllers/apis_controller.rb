require 'open-uri'

class ApisController < ApplicationController

  def weather
    address = "http://api.openweathermap.org/data/2.5/weather?q=chicago&units=imperial"
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
    address = "https://api.spotify.com/v1/search?q=u2&type=album"
    uri = URI.parse(URI.escape(address))
    string = open(uri).read
    @spotify = JSON.parse(string)
  end

end