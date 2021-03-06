# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


# メインのサンプルユーザー１人追加する
  User.create!(name:  "aaaaaa",
               email: "user@example.com",
               password:              "aaaaaa",
               password_confirmation: "aaaaaa",
               admin: true,
               activated: true,
               activated_at: Time.zone.now)


# 追加のユーザーをまとめて生成する
99.times do |n|
  #name  = "#{n+1}aaa"
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end