class AddQtdeToFilmes < ActiveRecord::Migration
  def change
    add_column :filmes, :qtde, :integer
	Filme.update_all ["qtde = ?", 1]
  end
end
