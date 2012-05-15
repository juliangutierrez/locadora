class Genero < ActiveRecord::Base
	validates :nome,  :presence => true

	has_many :filmes
end
