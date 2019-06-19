class Book < ApplicationRecord
  validates_presence_of :title, :author, :avg_rating, :isbn, :image
end
