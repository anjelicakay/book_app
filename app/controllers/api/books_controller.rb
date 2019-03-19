class Api::BooksController < ApplicationController
  before_action :authenticate_user
  
  def index
    @books = Book.all 
    render 'index.json.jbuilder'
  end

  def create
    book = Book.new(
                    title: params[:title],
                    author_id: params[:author_id],
                    summary: params[:summary],
                    genre: params[:genre],
                    image_url: params[:image_url],
                    page_count: params[:page_count]
                    )
    if book.save
      render json: {message: "Book created successfully"}, status: :created 
    else
      render json: {errors: book.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @book = Book.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @book = Book.find(params[:id])

    @book.title = params[:title] || @book.title
    @book.author_id = params[:author_id] || @book.author_id
    @book.summary = params[:summary] || @book.summary
    @book.genre = params[:genre] || @book.genre
    @book.image_url = params[:image_url] || @book.image_url
    @book.page_count = params[:page_count] || @book.page_count

    if @book.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @book.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    render json: {message: "Successfully removed book."}
  end

end
