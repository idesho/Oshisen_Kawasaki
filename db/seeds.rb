# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
    { name:"川田", nickname:"川田くん", email:"test_1@example.com", password: "123456" },
    { name:"戸崎", nickname:"戸崎くん", email:"test_2@example.com", password: "123456" },
    { name:"横山", nickname:"武史くん", email:"test_3@example.com", password: "123456" },
    { name:"松山", nickname:"松山くん", email:"test_4@example.com", password: "123456" , admin: true},
    { name:"クリストフ", nickname:"ルメール", email:"test_5@example.com", password: "123456" },
    { name:"岩田", nickname:"みらいくん", email:"test_6@example.com", password: "123456" },
    { name:"福永", nickname:"ゆーいちくん", email:"test_7@example.com", password: "123456" },
    { name:"坂井", nickname:"坂井くん", email:"test_8@example.com", password: "123456" },
    { name:"ミルコ", nickname:"デムーロ", email:"test_9@example.com", password: "123456" },
    { name:"ダミアン", nickname:"レーン", email:"test_10@example.com", password: "123456" },
    { name:"和田", nickname:"リュージくん", email:"test_11@example.com", password: "123456" },
    { name:"武", nickname:"豊くん", email:"test_12@example.com", password: "123456" },
    { name:"岩田", nickname:"ジーニアス", email:"test_13@example.com", password: "123456" },
    { name:"ゲスト", nickname:"ゲストくん", email:"test@example.com", password: "123456" },
  ])
  ])