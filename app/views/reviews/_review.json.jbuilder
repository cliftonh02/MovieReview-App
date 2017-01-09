json.extract! review, :id, :raing, :description, :created_at, :updated_at
json.url review_url(review, format: :json)