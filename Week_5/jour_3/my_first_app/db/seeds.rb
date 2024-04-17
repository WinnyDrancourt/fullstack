# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

100.times do
  user = Movie.create!(
    name: Faker::Movie.title,
    year: rand(1900...2020),
    genre: ["Action", "Horreur", "Comedie", "Drame"].sample,
    synopsis: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 2),
    director: Faker::Name.name,
    allocine_rating: rand(0.0..5.0).round(1),
    my_rating: nil,#rand(0..5),
    already_seen: false#Faker::Boolean.boolean(true_ratio: 0.25)
  )
end