class Aluguel < ActiveRecord::Base
  validates :cliente, :presence => true
  validates :filmes, :presence => true

  scope :active, where(:data_devolucao => nil)
  
  belongs_to :cliente
  has_and_belongs_to_many :filmes
end
