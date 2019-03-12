class Api::FollowingsController < ApplicationController
  before_action :authenticate_user

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
end
