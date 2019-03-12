class Api::ReviewsController < ApplicationController
  before_action :authenticate_user

  def index
    @reviews = Review.all 
    render 'index.json.jbuilder'
  end

  def create
    review = Review.new(
                        user_id: current_user.id,
                        book_id: current_book.id,
                        rating: params[:rating],
                        content: params[:content]
                        )
    if review.save
      render json: {message: "Review added successfully"}, status: :created 
    else
      render json: {errors: review.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @review = Review.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @review = Review.find(params[:id])

    @review.rating = params[:rating] || @review.rating
    @review.content = params[:content] || @review.content

    if current_user && @review.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @review.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    render json: {message: "Successfully removed review."}
  end
  
end
