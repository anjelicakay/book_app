class Api::BookClubsController < ApplicationController
  before_action :authenticate_user

  def index
    @book_clubs = BookClub.all 
    render 'index.json.jbuilder'
  end

  def create
    @book_club = BookClub.new(
                    name: params[:name],
                    book_id: params[:book_id]
                    )

    if @book_club.save
      render json: {message: "Book club created successfully"}, status: :created 
    else
      render json: {errors: @book_club.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @book_club = BookClub.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @book_club = BookClub.find(params[:id])

    @book_club.name = params[:name] || @book_club.name
    @book_club.book_id = params[:book_id] || @book_club.book_id

    if @book_club.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @book_club.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    book_club = BookClub.find(params[:id])
    book_club.destroy
    render json: {message: "Successfully removed book club."}
  end
end
