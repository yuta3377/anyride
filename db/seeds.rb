# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(nickname: 'Yuta', last_name: '清水', first_name: '雄大', last_name_kana: 'シミズ', first_name_kana: 'ユウタ', birthday: '1990/10/28', address: '神奈川県厚木市', phone_number: '09000000000', email: 'yuta@example.com', password: '000000', id: 0)
User.create!(nickname: 'Koji', last_name: '塩川', first_name: '浩司', last_name_kana: 'シオカワ', first_name_kana: 'コウジ', birthday: '1990/05/27', address: '東京都中央区', phone_number: '09011111111', email: 'koji@example.com', password: '111111', id: 1)
User.create!(nickname: 'Masato', last_name: '森田', first_name: '賢人', last_name_kana: 'モリタ', first_name_kana: 'マサト', birthday: '1991/01/01', address: '東京都三鷹市', phone_number: '09022222222', email: 'masato@example.com', password: '222222', id: 2)
Manufacture.create!(name: "Honda", id: 0)
Manufacture.create!(name: "Kawasaki", id: 1)
Manufacture.create!(name: "Harley-Davidson", id: 2)
Bodytype.create!(name: "ネイキッド", id: 0)
Bodytype.create!(name: "スーパースポーツ", id: 1)
Bodytype.create!(name: "アメリカン", id: 2)
Prefecture.create!(name: "東京都", id: 0)
Prefecture.create!(name: "神奈川県", id: 1)
Prefecture.create!(name: "千葉県", id: 2)
Bike.create!(name: "CB1300SB", price: 5000, year: 2011, displacement: 1300, mileage: 25000, description: "Nice bike!", manufacture_id: 0, prefecture_id: 1, bodytype_id: 0, user_id: 0)
Bike.create!(name: "XL883n", price: 7000, year: 2018, displacement: 883, mileage: 5000, description: "Good sound!", manufacture_id: 2, prefecture_id: 0, bodytype_id: 2, user_id: 2)
Bike.create!(name: "H2", price: 10000, year: 2019, displacement: 1000, mileage: 2000, description: "Very fast!", manufacture_id: 1, prefecture_id: 0, bodytype_id: 1, user_id: 1)
