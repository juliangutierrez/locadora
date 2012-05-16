class CreateAlugueis < ActiveRecord::Migration
  def change
    create_table :alugueis do |t|
      t.integer :finalizado
      t.references :cliente
      t.timestamp :data_saida
      t.timestamp :data_devolucao
      t.float :valor
      t.integer :qtde_filmes

      t.timestamps
    end
    add_index :alugueis, :cliente_id
  end
end
