# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date
#  color       :string
#  name        :string
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
10.times do 
    Cat.create!(birth_date: Faker::Date.between(5.years.ago, 1.years.ago), color: "black",name: Faker::Name.first_name,sex: "F",description: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
end