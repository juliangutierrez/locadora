require 'spec_helper'

describe Filme do
  describe "#qtde_disponivel" do
	  it "Quantidade disponivel deve ser calculada corretamente" do
  		aluguel                             = Aluguel.make(:sem_filmes)
  		filme                               = Filme.make!
  		qtde_filme                          = filme.qtde
  		filmes                              = [filme]
  		aluguel.update_attributes({"filmes" => filmes})		
  		aluguel.save		
  		filme.qtde_disponivel.should be(qtde_filme - 1)
  	end
  end
end

