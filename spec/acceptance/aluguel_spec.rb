require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Manage alugueis' do

  context 'create aluguel' do
    let(:cliente) { Cliente.make! }
    let(:filme)   { Filme.make! }

    before do
      cliente
      filme
      visit new_aluguel_path
    end

    scenario 'fill form correctly' do
      select cliente.nome, :from => 'Cliente:'
      check filme.nome

      wait_until { click_button 'Create Aluguel' }

      page.should have_content('Aluguel was successfully created.')
      page.should have_content(cliente.nome)
      page.should have_content(filme.nome)
    end

    scenario 'fill only email' do
      fill_in 'Email', :with => 'yuri@example.com'
      wait_until { click_button 'Create Cliente' }

      page.should have_content("Nome can't be blank")
    end

    scenario 'fill only name' do
      fill_in 'Nome', :with => 'Yuri'
      wait_until { click_button 'Create Cliente' }

      page.should have_content("Email can't be blank")
    end

    scenario 'fill invalid email' do
      fill_in 'Email', :with => 'yuriexample.com'
      wait_until { click_button 'Create Cliente' }

      page.should have_content("Email is invalid")
    end
  end
end