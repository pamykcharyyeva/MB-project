require 'net/http'
require 'uri'
require 'json'



class Newsletter < ApplicationRecord
  has_many :stories, foreign_key: :newsletter_date, primary_key: :date


  def publish
    uri = URI.parse("https://lyra-api.herokuapp.com/api/newsletters")

    header = {
      'Authorization': 'Bearer API-KEY'
      
    }
  
# Create the HTTP objects
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = self.to_json

    # Send the request
    response = http.request(request)
        
  end


 
  
end 