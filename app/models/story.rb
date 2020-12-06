class Story < ApplicationRecord
  belongs_to :newsletter, foreign_key: :newsletter_date, primary_key: :date

      # def publish_story
      #   # require 'rest-client'
      #   # byebug

      #     url = "https://lyra-api.herokuapp.com/api/stories"
        

      #     header = {
      #       'Authorization': 'Bearer qEUhd9tLUj6fqRW6JjwhyuDz',
      #       'Content-Type': 'application/json'
          
      #           } 
            
      #       response_get= RestClient.get(url, header)
      #       response_post = RestClient.post(url, self.to_json, header)

      #           # to test
      #       Rails.logger.info(response_get)    
      #       Rails.logger.info(response_post)
      #       byebug
      
      # end


end
