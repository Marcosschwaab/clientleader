class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name_complete
      t.string :email
      t.string :phone
      t.string :cel
      t.string :address
      t.string :city
      t.string :cpf_cnpj
      t.string :cep
      t.string :district

      t.timestamps
    end
  end
end
