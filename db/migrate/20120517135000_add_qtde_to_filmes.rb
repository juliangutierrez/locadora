class AddQtdeToFilmes < ActiveRecord::Migration
  def change
    add_column :filmes, :qtde, :integer

  end
end
