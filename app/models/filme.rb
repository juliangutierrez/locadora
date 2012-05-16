class Filme < ActiveRecord::Base
	validates :nome,  :presence => true
	validates  :genero,  :presence => true
	
	belongs_to :genero
	has_and_belongs_to_many :aluguels
end
