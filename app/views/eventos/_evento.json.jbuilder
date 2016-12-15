json.extract! evento, :id, :titulo, :link, :texto, :created_at, :updated_at
json.url evento_url(evento, format: :json)