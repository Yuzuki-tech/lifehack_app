require 'rails_helper'



RSpec.describe 'Users', type: :request do

  describe "before_action: :logged_in_user" do
    let(:user) { FactoryBot.create(:user) }

    it 'redirects edit when not logged in' do
      #log_in_as(user)

      get edit_user_path(user)
      expect(response).to redirect_to login_path
    end

    it 'redirects update when not logged in' do
      patch user_path(user), params: { user: {
        name: user.name,
        email: user.email,
      } }
      expect(response).to redirect_to login_path
    end
  end

  describe 'before_action: :correct_user' do
    let(:user) { FactoryBot.create(:user) }
    let(:other_user) { FactoryBot.create(:user) }

    #before { log_in_as(other_user) }
    #it 'redirect edit when logged in as wrong user' do
    #  log_in_as(other_user)
    #  get edit_user_path(user)
    #  expect(response).to redirect_to root_path
    #end
    #it 'redirect update when logged in as wrong user' do
    #
    #end


  end



end
