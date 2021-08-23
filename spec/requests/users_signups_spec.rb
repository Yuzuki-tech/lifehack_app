require 'rails_helper'

RSpec.describe 'UsersSignup', type: :request do
  describe 'GET /users_signup' do
    it 'works! (now write some real specs)' do
      get signup_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST #create' do
    # 有効なユーザーの検証
    context 'valid request' do
      # ユーザーが追加される
      it 'adds a user' do
        expect do
          post users_path, params: { user: attributes_for(:user) }
        end.to change(User, :count).by(1)
      end
      # ユーザーが追加されたときの検証
      context 'adds a user' do
        before { post users_path, params: { user: attributes_for(:user) } }
        subject { response }
        it { is_expected.to redirect_to user_path(User.last) } # showページにリダイレクトされる
        it { is_expected.to have_http_status 302 } # リダイレクト成功

        it 'log in' do
          expect(is_logged_in?).to be_truthy
        end
        
      end
    end

    # 無効なリクエスト
    context 'invalid request' do
      # 無効なデータを作成
      let(:user_params) do
        attributes_for(:user, name: '',
                              email: 'user@invalid',
                              password: '',
                              password_confirmation: '')
      end
      # ユーザーが追加されない
      it 'does not add a user' do
        expect do
          post users_path, params: { user: user_params }
        end.to change(User, :count).by(0)
      end
    end
  end
end
