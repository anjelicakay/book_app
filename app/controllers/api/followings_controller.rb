class Api::FollowingsController < ApplicationController
  before_action :authenticate_user

  # def index
  #   @followings = Following.all 
  #   render 'index.json.jbuilder'
  # end

  def create
    @following = Following.new(
                                followee_id: params[:followee_id],
                                follower_id: current_user.id
                              )

    if @following.save 
      render 'show.json.jbuilder'
    else
      render json: {errors: @following.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # def destroy
  #   following = Following.find(params[:id])
  #   following.destroy
  #   render json: {message: "Successfully unfollowed."}
  # end
end
