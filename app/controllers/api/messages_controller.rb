class Api::MessagesController < ApplicationController
  before_action :authenticate_user

  def index
    @messages = Message.all 
    render 'index.json.jbuilder' 
  end

  def create
    @message = Message.new(
                          user_id: current_user.id,
                          book_club_id: current_book_club.id,
                          content: params[:content]
                          )

    if @message.save
      render json: {message: "Message created successfully"}, status: :created 
    else
      render json: {errors: @message.errors.full_messages}, status: :bad_request
    end   
  end

end
