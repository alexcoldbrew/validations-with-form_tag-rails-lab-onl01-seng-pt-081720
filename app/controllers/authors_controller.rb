class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    
    @author = Author.create(author_params)

    if @author.valid?

      redirect_to author_path(@author)

    else

      render :new

    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
