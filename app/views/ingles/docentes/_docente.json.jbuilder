json.extract! docente, :id, :nome, :linha, :link, :created_at, :updated_at
json.url docente_url(docente, format: :json)