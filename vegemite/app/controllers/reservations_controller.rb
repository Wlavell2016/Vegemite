class ReservationsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]
  before_action :load_garden

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
    @garden = Garden.find(params[:garden_id])
  end

  def create
    # raise params.inspect
    # binding.pry
    @garden = Garden.find(params[:garden_id])
    @reservation = @garden.reservations.build(reservation_params)
    @reservation.grower = current_user
    if @reservation.save
      # redirect_to garden_url(@garden), notice: 'Reservation created successfully'
      redirect_to garden_reservations_url, notice: 'Reservation created successfully'
    else
      render 'gardens/show', alert: "Reservation couldn't be saved"
      # test the rendering output when the create method fails to save
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
      if @reservation.update_attributes(reservation_params)
        redirect_to garden_reservation_url(@reservation)
        # create view or use console to make sure this route works
        render :edit
      end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to gardens_url
  end

  private

  def reservation_params
    params.require(:reservation).permit(:note)
  end

  def load_garden
    @garden = Garden.find(params[:garden_id])
  end

end
