



class Newsletter < ApplicationRecord
  has_many :stories, foreign_key: :newsletter_date, primary_key: :date


  def publish(newsletter_params)
    require 'net/http'
    require 'uri'
    require 'json'
    uri = URI.parse("https://lyra-api.herokuapp.com/api/newsletters")
    # byebug
# not sure how to show to add hiden api here from env/.gitignore
# need to figure that out
    header = {
      'Authorization': 'Bearer api-key',
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    }
  
# Create the HTTP objects
   
    request = Net::HTTP::Post.new(uri.request_uri, header)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == "https")
    request.body = newsletter_params.to_json

    # Send the request
    http.request(request)
  
  end

  



  

 
  
end 