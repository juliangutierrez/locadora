class CreateAlugueisFilmes < ActiveRecord::Migration
  def self.up
    create_table :alugueis_filmes do |t|
      t.references :aluguel, :filme
    end
  end
 
  def self.down
    drop_table :alugueis_filmes
  end
end