require 'spec_helper'

describe Aluguel do
	it "data de saida deve ser inicializada" do
		Aluguel.new.data_saida.should be_a_kind_of(Time)
	end
	it "data de entrega deve ser preenchida ao finalizar" do
		aluguel = Aluguel.make!
		aluguel.finalizar!
		aluguel.data_devolucao.should be_a_kind_of(Time)
	end
end	