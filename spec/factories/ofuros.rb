FactoryBot.define do
    factory :ofuro do
      id {1}
      name {'テスト銭湯'}
      address {'川崎市川崎区テストアドレス'}
      introduction {'きれいな銭湯です'}
      latitude {35.6097839}
      longitude {139.5993176}
      association :ward
    end
  end