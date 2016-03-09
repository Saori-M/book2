ass BookController < ApplicationController

before_action :book_find, only:[:show, :edit, :update, :destroy]
before_action :redirect, only:[:create, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(params[:book].permit(:title, :author))
    book.save
  end

  def edit
  end

  def update
    book.update(params[:book].permit(:title, :author))
  end

  def destroy
    book.destroy
  end

  private
    def book_find
      @book = Book.find(params[:id])
    end

    def redirect
      redirect_to root_path
    end

end

