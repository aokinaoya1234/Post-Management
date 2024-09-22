# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Post.create!(
  title: "予定#1",
  content: "これは予定#1の内容です。",
  start_date: Time.current + 1.days,
  end_date: Time.current + 2.days
)

Post.create!(
  title: "予定#2",
  content: "これは予定#2の内容です。",
  start_date: Time.current + 2.days,
  end_date: Time.current + 2.days
)

Post.create!(
  title: "予定#3",
  content: "これは予定#3の内容です。",
  start_date: Time.current + 3.days,
  end_date: Time.current + 2.days
)