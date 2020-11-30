class Story < ApplicationRecord
  belongs_to :newsletter, foreign_key: :newsletter_date, primary_key: :date
end
