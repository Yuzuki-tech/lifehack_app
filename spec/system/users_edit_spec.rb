require 'rails_helper'


require 'support/test_helper.rb'

RSpec.describe 'UsersEdit', type: :system do

  let(:user) { FactoryBot.create(:user) }

  #before do
  #  log_in_as(user)
  #  click_on 'Account'
  #  click_on 'Settings'
  #end

  it 'unsuccessful edit' do
    
    log_in_as(user)
    #save_and_open_page
    #find('.dropdown-toggle').click_on
    #visit login_path
    #fill_in 'Email',    with: user.email
    #fill_in 'Password', with: user.password
    #click_button 'Log in'


    expect(current_path).to eq user_path(user)

    click_on 'Account'
    #save_and_open_page

    #select 'Settings', from: 'dropdown'

    click_on 'Settings'
    fill_in 'Name', with: ' '
    fill_in 'Email', with: 'user@invalid'
    fill_in 'Password', with: 'foo'
    fill_in 'Confirmation', with: 'bar'
    click_on 'Save changes'

    expect(current_path).to eq user_path(user)
  end

  it 'successful edit' do
    log_in_as(user)
    click_on 'Account'
    click_on 'Settings'

    fill_in 'Name', with: 'foobar'
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Password', with: ''
    fill_in 'Confirmation', with: ''
    click_on 'Save changes'  
    
    expect(current_path).to eq user_path(user)
    expect(has_css?('.alert-success')).to be_truthy

  end

end
