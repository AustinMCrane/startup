json.extract! subscription, :id, :plan, :user_id, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)