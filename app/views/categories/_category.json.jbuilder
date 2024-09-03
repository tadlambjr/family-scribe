json.extract! category, :id, :name, :color, :order, :is_visible, :created_at, :updated_at
json.url category_url(category, format: :json)
