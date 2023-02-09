# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

user = User.new(
  :email => "khang.td@gmail.com",
  :name => "Khang",
  :password => "123456",
  :password_confirmation => "123456"
)
user.save!

Category.create([{ text: "英語" }, { text: "日本語" }, { text: "ベトナム語" }, { text: "中国語" },])