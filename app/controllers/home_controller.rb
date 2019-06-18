class HomeController < ApplicationController
  def index
    @books = Book.all.limit(20)
  end
end