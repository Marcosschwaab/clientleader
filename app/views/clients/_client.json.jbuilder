json.extract! client, :id, :name_complete, :email, :phone, :cel, :address, :city, :cpf_cnpj, :cep, :district, :created_at, :updated_at
json.url client_url(client, format: :json)
