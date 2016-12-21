json.extract! egresso, :id, :ano, :nivel, :nome, :lattes, :orientador, :defesa, :created_at, :updated_at
json.url egresso_url(egresso, format: :json)