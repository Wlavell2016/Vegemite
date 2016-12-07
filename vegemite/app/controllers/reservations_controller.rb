class ReservationsController < ApplicationController
  before_action :ensure_logged_in
  # before_action :load_garden
  # clarify if we really need this filter and the load_garden method

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  # def new
  #   @reservation = Reservation.new
  # end

  def create
    # clarify this!
    @garden = Garden.find(params[:garden_id])
    @reservation.user = current_user
    # @reservation = @garden.reservations.build(reservation_params)
    # if @reservation.save
    if @garden.reservations.create(reservation_params)
      redirect_to garden_url(@garden), notice: 'Reservation created successfully'
    else
      render 'gardens/show', alert: "Reservation couldn't be saved"
      # pending further clarification, test the rendering output when the create method fails to save
  end

  def edit
        @reservation = Reservation.find(params[:id])
  end

  def update
      # clarify our understanding -- would we need to call on garden, to build the association?
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
  end

  private

  def reservation_params
      params.require(:reservation).permit(:note)
  end

  # def load_garden
  #   @garden = Garden.find(params)[:garden_id]
  # end

end
