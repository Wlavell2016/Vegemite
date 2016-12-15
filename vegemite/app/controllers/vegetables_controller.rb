class VegetablesController < ApplicationController

  def index
    @vegetables = Vegetable.all
  end

  def show
    @vegetable = Vegetable.find(params[:id])
  end

  def new
    @vegetable = Vegetable.new
  end

  def create
    @vegetable = Vegetable.new(vegetable_params)
    @garden.user_id = current_user.id
  end

  def edit
    @vegetable = Vegetable.find(params[:id])
  end

  def update
  end

end
