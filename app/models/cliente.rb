class Cliente < ActiveRecord::Base
	validates :nome, :presence=> true
end
