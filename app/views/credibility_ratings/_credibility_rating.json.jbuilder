json.extract! credibility_rating, :id, :credibility_level, :reason, :rater, :created_at, :updated_at
json.url credibility_rating_url(credibility_rating, format: :json)