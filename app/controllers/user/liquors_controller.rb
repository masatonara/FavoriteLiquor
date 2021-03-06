class User::LiquorsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]

  def show
    @liquor = Liquor.find(params[:id])
    @comment = Comment.new
  end


  def index
    @liquors = Liquor.all.order(id: "DESC")
    @users = User.order("RANDAM()").limit(5)
  end

  def new
    @liquor = Liquor.new
  end

  def create
    @liquor = Liquor.new(liquor_params)
    @liquor.user_id = current_user.id
    if @liquor.save
      tags = Vision.get_image_data(@liquor.liquor_image)
      tags.each do |tag|
        @liquor.tags.create(name: tag)
      end
      redirect_to liquor_path(@liquor), success: "投稿されました"
    else
      @liquors = Liquor.all
      render 'new'
    end
  end

  def edit
  end

  def update
    if @liquor.update(liquor_params)
      redirect_to liquor_path(@liquor), notice: "変更されました"
    else
      render "edit"
    end
  end

  def destroy
    @liquor.destroy
    redirect_to liquors_path
  end

  private

  def liquor_params
    params.require(:liquor).permit(:liquor_image, :name, :introduction, :genre_id, :restaurant_name,
                                   :address, :day, :rate, :latitude, :longitude)
  end

  def ensure_correct_user
    @liquor = Liquor.find(params[:id])
    unless @liquor.user == current_user
      redirect_to liquors_path
    end
  end
end
