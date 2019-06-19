require 'rails_helper'

describe "User visits item show page" do
  it "can see book details" do
    book = create(:book)

    visit book_path(book)

    expect(page).to have_content(book.title)
    expect(page).to have_content(book.author)
    expect(page).to have_content(book.isbn)
    expect(page).to have_content(book.avg_rating)
  end
end 