json.extract! event, :id, :user_id, :name, :date, :time, :location, :created_at, :updated_at
json.url event_url(event, format: :json)
