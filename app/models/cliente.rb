class Cliente < ActiveRecord::Base
	validates :nome, :email, :presence => true
  validates :email, :format => /\b[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b/

	has_many :alugueis, :dependent => :destroy
	
end
