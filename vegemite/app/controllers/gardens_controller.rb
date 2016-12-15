class GardensController < ApplicationController
  before_action :current_user, only: [:create, :destroy]

  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user_ids = current_user.id
    if @garden.save
      redirect_to garden_url(@garden)
    else
      render :new
    end
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def update
    @garden = Garden.find(params[:id])
    if @garden.update_attributes(garden_params)
      redirect_to garden_url(@garden)
    else
      render :edit
    end
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to gardens_url
  end

  private

  def garden_params
    params.require(:garden).permit(:title, :description, :address, :size, :image, vegetable_ids:[])
  end

  # def garden_owner
  #   garden = Garden.find(params[:id])
  #   if current_user != garden.owner
  #     redirect
  # end

end
