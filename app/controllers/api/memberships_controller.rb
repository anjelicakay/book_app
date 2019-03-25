class Api::MembershipsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @memberships = Membership.all 
    render 'index.json.jbuilder'
  end

  def create
    @membership = Membership.new(
                                user_id: current_user.id,
                                book_club_id: params[:book_club_id]
                                )

    if @membership.save
      render json: {message: "Member created successfully"}, status: :created 
    else
      render json: {errors: @membership.errors.full_messages}, status: :bad_request
    end    
  end

  def show
    @membership = Membership.find(params[:id])
    render 'show.json.jbuilder'
  end

  def destroy
    membership = Membership.find(params[:id])
    membership.destroy
    render json: {message: "Successfully removed member."}
  end
end
