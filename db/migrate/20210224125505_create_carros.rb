class CreateCarros < ActiveRecord::Migration[6.1]
  def change
    create_table :carros do |t|
      t.string :marca
      t.string :modelo
      t.string :ano
      t.string :descricao
      t.string :valor

      t.timestamps
    end
  end
end
