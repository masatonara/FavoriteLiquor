# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create!(
    {genre_name: 'ビール'},
    {genre_name: 'ワイン'},
    {genre_name: '焼酎'},
    {genre_name: '日本酒'},
    {genre_name: '果実酒'},
    {genre_name: 'ウイスキー'},
    {genre_name: 'ブランデー'},
    {genre_name: 'カクテル'},
    {genre_name: 'ラム'},
    {genre_name: 'ウォッカ'},
    {genre_name: 'ジン'},
    {genre_name: 'テキーラ'},
    {genre_name: 'リキュール（香草・薬草系）'},
    {genre_name: 'リキュール（果実系）'},
    {genre_name: 'リキュール（ナッツ・種子系）'},
    {genre_name: 'リキュール（その他）'},
    {genre_name: 'その他'}
  )
  
10.times do |n|
    Liquor.create!(
      user_id: "1",
      genre_id: "1",
      name: "beer#{n + 1}",
      introduction: "This beer is the best",
      restaurant_name: "bar",
      liquor_image: open("./app/assets/images/beer.jpg"),
      address: "東京都新宿区",
      day: "2021/3/23",
      rate: "5"
    )
  end

5.times do |n|
    User.create!(
      email: "test#{n + 1}@test.com",
      name: "test#{n + 1}",
      password: "test01",
      user_image: File.open('./app/assets/images/test1.jpg')
    )
end

5.times do |n|
    User.create!(
      email: "men#{n + 1}@test.com",
      name: "men#{n + 1}",
      password: "test01",
      user_image: File.open('./app/assets/images/test2.jpg')
    )
end

5.times do |n|
    User.create!(
      email: "women#{n + 1}@test.com",
      name: "women#{n + 1}",
      password: "test01",
      user_image: File.open('./app/assets/images/test3.jpg')
    )
end

5.times do |n|
    User.create!(
      email: "#jin#{n + 1}@test.com",
      name: "#jin#{n + 1}",
      password: "test01",
      user_image: File.open('./app/assets/images/test4.jpg')
    )
end

5.times do |n|
    User.create!(
      email: "beer#{n + 1}@test.com",
      name: "beer#{n + 1}",
      password: "test01",
      user_image: File.open('./app/assets/images/test5.jpg')
    )
end



