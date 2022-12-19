require 'rails_helper'

RSpec.describe 'ユーザー機能テスト', type: :system do
let!(:user) { FactoryBot.create(:user)}

  context 'ユーザー新規登録' do
    it '新規登録したら、元いたページへ遷移する' do
      visit user_path(user.id)
      click_link '新規登録'
      fill_in 'user[name]', with: 'システムテスト'
      fill_in 'user[nickname]', with: 'テストするよ'
      fill_in 'user[email]', with: 'testtest@test.com'
      fill_in 'user[password]', with: '123456'
      fill_in 'user[password_confirmation]', with: '123456'
      click_button 'commit'
      expect(page).to have_content 'ユーザー登録しました'
    end
  end

  context 'ログインフォーム入力' do
    it 'ログイン完了' do
      visit new_session_path
      fill_in 'session[email]', with: 'test2@gmail.com'
      fill_in 'session[password]', with: '123456'
      click_button 'commit'
      expect(page).to have_content 'お気に入り'
    end
  end

  context 'ログアウトテスト' do
    it 'ログアウト' do
      visit new_session_path
      fill_in 'session[email]', with: 'test2@gmail.com'
      fill_in 'session[password]', with: '123456'
      click_button 'commit'
      click_link "ログアウト"
      expect(page).to have_content 'ログアウトしました'
    end
  end

  context 'ユーザー情報を編集' do
    it '編集内容が反映される' do
      visit new_session_path
      fill_in 'session[email]', with: 'test2@gmail.com'
      fill_in 'session[password]', with: '123456'
      click_button 'commit'
      click_link 'マイページ'
      click_link 'プロフィール編集'
      fill_in 'user[name]', with: '名前変えるよ'
      fill_in 'user[email]', with: 'emailadd@gamil.com'
      fill_in 'user[password]', with: '123456'
      fill_in 'user[password_confirmation]', with: '123456'
      click_button 'commit'
      expect(page).to have_content '編集しました'
    end
  end
end
