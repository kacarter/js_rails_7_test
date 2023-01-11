json.extract! dynamic_thing, :id, :name, :active, :expiration_date, :created_at, :updated_at
json.url dynamic_thing_url(dynamic_thing, format: :json)
