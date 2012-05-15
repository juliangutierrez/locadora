class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :nome
      t.integer :ano
      t.string :diretor
      t.references :genero

      t.timestamps
    end
    add_index :filmes, :genero_id
  end
end
