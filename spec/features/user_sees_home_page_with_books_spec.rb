require 'rails_helper'

describe "Visitor navigates to welcome page" do
  it "sees a welcome message and three books" do
    book_1 = create(:book)
    book_2 = create(:book)
    book_3 = create(:book)

    visit root_path

    expect(page).to have_content("welcome to my bookstore!")
    expect(page).to have_content(book_1.title)
    expect(page).to have_content(book_2.title)
    expect(page).to have_content(book_3.title)
  end
end