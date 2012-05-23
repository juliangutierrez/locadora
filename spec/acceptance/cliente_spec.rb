require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Manage clientes' do
  
  context 'create client' do
    before { visit new_cliente_path }
    
    scenario 'fill form correctly' do
      fill_in 'Nome', :with => 'Yuri'
      fill_in 'Email', :with => 'yuri@example.com'
      wait_until { click_button 'Create Cliente' }

      page.should have_content('Cliente was successfully created.')
      page.should have_content('Yuri')
      page.should have_content('yuri@example.com')
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