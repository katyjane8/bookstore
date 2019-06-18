# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "csv"

# CSV.foreach("./data/books.csv", headers: true, header_converters: :symbol, encoding: "iso-8859-1:utf-8") do |row|
#   Book.create!(title: row[:title],
#                author: row[:authors],
#                isbn: row[:isbn],
#                image: Rails.root.join("app/assets/images/books/#{row[:goodreads_book_id]}.jpg").open,
#                avg_rating: row[:average_rating])
# end

require "csv"

csv_text = File.read(Rails.root.join("./data/books.csv"))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  t = Book.new
  t.title = row['title']
  t.author = row['authors']
  t.isbn = row['isbn']
  t.image = row['image_url']
  t.avg_rating = row['average_rating']
  t.save
  puts "Hey there! #{t.title}, #{t.author} saved"
end

puts "There are now #{Book.count} rows in the books table"
