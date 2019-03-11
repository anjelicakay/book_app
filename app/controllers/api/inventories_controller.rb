class Api::InventoriesController < ApplicationController

  def index
    @inventories = Inventory.all
    render 'index.json.jbuilder'
  end

  def create
    inventory = Inventory.new(
                              user_id: current_user.id,
                              book_id: current_book.id,
                              status: params[:status]
                              )
    if inventory.save
      render json: {message: "Book added successfully"}, status: :created 
    else
      render json: {errors: inventory.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @inventory = Inventory.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @inventory = Inventory.find(params[:id])

    @inventory.status = params[:status] || @inventory.status

    if @user.id = current_user.id && @inventory.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity     
    end
  end
  
end