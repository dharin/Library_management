class HomeController < ApplicationController
  def index
  end

  def book_search
  	@books = Book.where('title LIKE (?) or author LIKE(?)  or published_by LIKE (?)', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
  end
end
