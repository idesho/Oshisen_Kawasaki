require 'rails_helper'

RSpec.describe '銭湯機能テスト', type: :system do

  let!(:user) { FactoryBot.create(:user)}

  let!(:ofuro) { FactoryBot.create(:ofuro)}

  describe 'お気に入り機能' do
    context 'ログイン後、特定の公園の画面で「お気に入りする」をクリックすると' do
      before do
        visit new_session_path
        fill_in 'session[email]', with: user.email
        fill_in 'session[password]', with: user.password
        click_button 'commit'
        visit ofuro_path(ofuro.id)
        click_link 'お気に入りする'
      end
      it 'その公園がお気に入り登録される' do
        expect(page).to have_content 'お気に入り登録しました'
      end
      it 'マイページにお気に入り登録した公園名が表示される' do
        visit user_path(user.id)
        expect(page).to have_content ofuro.name
      end      
    end
  end
end