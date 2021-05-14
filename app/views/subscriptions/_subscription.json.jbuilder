json.extract! subscription, :id, :email, :category, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
