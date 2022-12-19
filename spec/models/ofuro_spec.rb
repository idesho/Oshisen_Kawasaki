require 'rails_helper'

RSpec.describe 'ofuroモデル機能', type: :model do

  context '新規登録のnameがない時' do
    it "バリデーションが通らない" do
      ofuro = Ofuro.new(
        name: "",
        introduction: "DIC銭湯です",
        address: "川崎市川崎区",
        image: "#{Rails.root}/spec/pictures/original.jpeg"
      )
      expect(ofuro).not_to be_valid
    end
  end

  context '新規登録のintroductionがない時' do
    it "バリデーションが通らない" do
      ofuro = Ofuro.new(
        name: "DI銭湯",
        introduction: "",
        address: "川崎市川崎区",
        image: "#{Rails.root}/spec/pictures/original.jpeg"
      )
      expect(ofuro.valid?).to eq false
    end
  end

  context '新規登録のaddressがない時' do
    it "バリデーションが通らない" do
      ofuro = Ofuro.new(
        name: "DI銭湯",
        introduction: "DIC銭湯です",
        address: "",
        image: "#{Rails.root}/spec/pictures/original.jpeg"
      )
      expect(ofuro).not_to be_valid
    end
  end
end