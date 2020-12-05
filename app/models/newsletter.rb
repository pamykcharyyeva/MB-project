require 'net/http'
require 'uri'
require 'json'



class Newsletter < ApplicationRecord
  has_many :stories, foreign_key: :newsletter_date, primary_key: :date


  def publish(newsletter_params)
    uri = URI.parse("https://lyra-api.herokuapp.com/api/newsletters")
    # byebug
# not sure how to show to add hiden api here from env/.gitignore
# need to figure that out
    header = {
      'Authorization': 'Bearer qEUhd9tLUj6fqRW6JjwhyuDz',
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    }
  
# Create the HTTP objects
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = newsletter_params.to_json

    # Send the request
    response = http.request(request, header)
    response.value
        
  end


  

 
  
end 