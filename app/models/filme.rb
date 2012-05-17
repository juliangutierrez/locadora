class Filme < ActiveRecord::Base
	validates :nome,  :presence => true
	validates  :genero,  :presence => true
	validates :qtde, :presence => true
	
	belongs_to :genero
	has_and_belongs_to_many :alugueis

	def qtde_disponivel
		self.qtde - self.alugueis.active.size
	end
end
