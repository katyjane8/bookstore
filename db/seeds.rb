# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach("./data/books.csv", headers: true, header_converters: :symbol) do |row|
  Book.create!(title: row[:title],
               author: row[:authors],
               isbn: row[:isbn],
               image: URI.parse(row[:image_url]).open,
               avg_rating: row[:average_rating]
end