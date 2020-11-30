json.extract! newsletter_story, :id, :title, :html, :author, :newsletter_date, :created_at, :updated_at
json.url newsletter_story_url(newsletter_story, format: :json)
