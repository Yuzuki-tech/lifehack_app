require 'rails_helper'

RSpec.describe "UsersIndex", type: :system do

  let!(:user) { FactoryBot.create(:user) }

  describe 'pagination' do

    before do
      30.times do
        FactoryBot.create(:continuous_users)
      end
    #  log_in_as user
    #  #get users_path
    #  #user_path(user)
    #  #save_and_open_page
    end
   

    #it '確認' do
    #  log_in_as user
    #  click_link 'Users'
    #  #get edit_user_path(user)
    #  expect(current_path).to eq users_path
    #  expect(response.body).to include '<div class="pagination">'
    #end
    #it 'div.paginationが存在すること' do
    #  expect(response.body).to include '<div class="pagination">'
    #end
    #
    #it 'ユーザごとのリンクが存在すること' do
    #  User.paginate(page: 1).each do |user|
    #    expect(response.body).to include "<a href=\"#{user_path(user)}\">"
    #  end
    #end
  end

end
