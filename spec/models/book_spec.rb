require "rails_helper"

RSpec.describe Book, type: :model do
  before(:all) do
    @book = create(:book)
  end

  it "is valid with valid attributes" do
    expect(@book).to be_valid
  end

  it "is invalid without title" do
    book = Book.new(author: "cool author",
                    isbn: 1000,
                    image: "book_default.jpg",
                    avg_rating: "3.4")

    expect(book).to be_invalid
  end
end
