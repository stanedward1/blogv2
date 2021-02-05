json.extract! friendlink, :id, :subject, :picture, :name, :url, :created_at, :updated_at
json.url friendlink_url(friendlink, format: :json)
