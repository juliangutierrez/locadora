class Aluguel < ActiveRecord::Base
  validates :cliente, :presence => true
  validates :filmes, :presence => true

  scope :active, where(:data_devolucao => nil)
  
  belongs_to :cliente
  has_and_belongs_to_many :filmes
  
  after_initialize :set_rental_date
  
  def set_rental_date
  	if self.data_saida.nil?   
  		self.data_saida = Time.new
  	end
  end

  def finalizar!
  	self.update_attributes(:data_devolucao => Time.new)
  end
end
