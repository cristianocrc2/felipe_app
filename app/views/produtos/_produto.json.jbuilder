json.extract! produto, :id, :fabricante_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)