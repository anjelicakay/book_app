class Api::AuthorsController < ApplicationController

  def index
    @authors = Author.all  
    render 'index.json.jbuilder'
  end

  def create
    author = Author.new(
                        first_name: params[:first_name],
                        last_name: params[:last_name],
                        biography: params[:biography]
                        )
    if author.save
      render json: {message: "User created successfully"}, status: :created 
    else
      render json: {errors: author.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @author = Author.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @author = Author.find(params[:id])

    @author.first_name = params[:first_name] || @author.first_name
    @author.last_name = params[:last_name] || @author.last_name
    @author.biography = params[:biography] || @author.biography

    if @author.save
      render 'show.json.jbuilder'
    else
      render json {errors: @author.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
