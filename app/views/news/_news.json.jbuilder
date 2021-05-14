json.extract! news, :id, :title, :subtitle, :description, :image, :link, :video, :created_at, :updated_at
json.url news_url(news, format: :json)
