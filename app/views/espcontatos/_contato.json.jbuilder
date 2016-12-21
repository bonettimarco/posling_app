json.extract! contato, :id, :texto, :created_at, :updated_at
json.url contato_url(contato, format: :json)