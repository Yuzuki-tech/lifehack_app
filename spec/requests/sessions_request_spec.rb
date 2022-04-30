require 'rails_helper'

RSpec.describe "Sessions", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get login_path
      expect(response).to have_http_status(:success)
    end
  end

  let(:user) { FactoryBot.create(:user) }
    describe 'remember me' do
      it "remembers the cookie when user checks the Remember Me box" do
        #visit login_path
        #fill_in 'Email',    with: user.email
        #fill_in 'Password', with: user.password
        ##チェックボックスに入力
        #check 'session_remember_me'
        #click_button 'Log in'

        log_in_as_check(user, remember_me: '1')

        #visit login_path
        #fill_in 'Email',    with: user.email
        #fill_in 'Password', with: user.password
        #check 'Remember me on this computer'
        #find('.settings-link').click

       #click_button 'Log in'

        expect(cookies[:remember_token]).not_to eq nil
      end
      it "does not remembers the cookie when user does not checks the Remember Me box" do
        log_in_as_check(user, remember_me: '0')
        expect(cookies[:remember_token]).to eq nil
      end
    end


  describe 'frendly forwarding' do
    let(:user){FactoryBot.create(:user)}
    it 'succeeds' do
      visit edit_user_path(user)
      log_in_as(user)
      expect(current_path).to eq edit_user_path(user)

    end
    
  end

#次のテスト
  describe 'should redirect index when not logged in' do
    let(:user){FactoryBot.create(:user)}
    it 'not login' do
      get users_path
      expect(response).to redirect_to login_path


      #visit users_path
      #expect(current_path).to eq login_path



    end
  end



end
