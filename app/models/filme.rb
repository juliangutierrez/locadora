class Filme < ActiveRecord::Base
	validates :nome,  :presence => true
	validates  :genero,  :presence => true
	
	belongs_to :genero
end
