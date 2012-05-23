require 'spec_helper'

describe Aluguel do
  it "data de saida deve ser inicializada" do
    subject.data_saida.should be_a_kind_of(Time)
  end

  describe '#finalizar!' do
    it "data de entrega deve ser preenchida ao finalizar" do
      aluguel = Aluguel.make!
      aluguel.finalizar!
      aluguel.data_devolucao.should be_a_kind_of(Time)
    end
  end

  describe '#set_rental_date' do
    it 'sets rental date' do
      subject.data_saida = nil
      subject.set_rental_date
      subject.data_saida.should be_a_kind_of(Time)
    end
  end
end	