class ReservationsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]
  before_action :load_garden

  def index
    @reservations = Reservation.all
  end

  def show
    @garden = Garden.find(params[:garden_id])
    @reservation = Reservation.find(params[:id])
  end

  def new
    @garden = Garden.find(params[:garden_id])
    @reservation = Reservation.new
  end

  def create
    # raise params.inspect
###########
binding.pry
    @garden = Garden.find(params[:garden_id])
    @reservation = @garden.reservations.build(reservation_params)
        @garden.reservations.each do |f|
        if f.startdate > @reservation.startdate
            @test1 = 4
        else
            @test1 = 6
###########
binding.pry
        end
    end
    @reservation.grower = current_user
    if @reservation.save
    #   # redirect_to garden_url(@garden), notice: 'Reservation created successfully'
    #   redirect_to garden_reservation_url(@garden, @reservation), notice: 'Reservation made!'
    # else
    #   redirect_to garden_path(@garden), alert: @reservation.errors.full_messages
    #   # test the rendering output when the create method fails to save
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
    params.require(:reservation).permit(:note, :vegetable_id, :startdate, :enddate)
  end

  def load_garden
    @garden = Garden.find(params[:garden_id])
  end

end
