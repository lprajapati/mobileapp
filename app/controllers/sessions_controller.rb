require 'httparty'
class SessionsController < ApplicationController
  def index
    response = HTTParty.get("http://ws.spotify.com/search/1/track?q=titanic");
    @tracks = Hash.from_xml(response.body)["tracks"]["track"]
    
  end

end
