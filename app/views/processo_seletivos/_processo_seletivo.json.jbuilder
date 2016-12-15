json.extract! processo_seletivo, :id, :cabecalho, :mestrado, :texto1, :doutorado, :texto2, :created_at, :updated_at
json.url processo_seletivo_url(processo_seletivo, format: :json)