class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to garden_url(@garden), notice: 'Reservation created successfully'
    else
      render 'gardens/show', alert: "Reservation couldn't be saved"
      # pending further clarification, test the rendering output when the create method fails to save
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
