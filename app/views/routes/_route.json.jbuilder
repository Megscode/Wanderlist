json.extract! route, :id, :title, :description, :created_at, :updated_at
json.url route_url(route, format: :json)
