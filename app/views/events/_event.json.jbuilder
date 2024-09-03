json.extract! event, :id, :name, :start, :end, :is_annual, :color, :notes, :created_at, :updated_at
json.url event_url(event, format: :json)
