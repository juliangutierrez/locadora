class Cliente < ActiveRecord::Base
	validates :nome, :presence => true

	has_many :alugueis, :dependent => :destroy
	
end
