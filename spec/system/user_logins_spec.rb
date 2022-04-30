require 'rails_helper'


RSpec.describe 'UsersLogins', type: :system do

  let(:user) { FactoryBot.create(:user) }

  it 'succes log_in_as' do
    log_in_as(user)
    #visit login_path
    #fill_in 'Email',    with: user.email
    #fill_in 'Password', with: user.password
    #click_button 'Log in'

    expect(current_path).to eq user_path(user)



  
  end


end









