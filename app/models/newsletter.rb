
class Newsletter < ApplicationRecord
  has_many :stories, foreign_key: :newsletter_date, primary_key: :date
  

      def publish
        # require 'rest-client'
        # byebug



          url = "https://lyra-api.herokuapp.com/api/newsletters"
          # url = "https://lyra-api.herokuapp.com/api/stories"
        

          header = {
            'Authorization': 'Bearer API-KEY',
            'Content-Type': 'application/json'
          
          } 
      
              response_get= RestClient.get(url, header)
             response_post = RestClient.post(url, self.to_json, header)
        
  
          # to test
          Rails.logger.info(response_get)    
            Rails.logger.info(response_post)
            byebug
            
      end


  
end 