class GardensController < ApplicationController
    before_action :current_user, only: [:create, :destroy]
    before_action :ensure_logged_in, except: [:index]

    def index
        # @gardens = Garden.all
        @gardens = Garden.all
        if params[:search]
          @gardens = Garden.search(params[:search])
        else
          @gardens = Garden.all
        end
    end

    def show
        @garden = Garden.find(params[:id])
        @reservation = Reservation.new
        @user = current_user
    end

    def new
        @garden = Garden.new
    end

    def create
        @garden = Garden.new(garden_params)
        @garden.user_id = current_user.id
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
        params.require(:garden).permit(:title, :description, :address, :size, :garden_image, vegetable_ids: [])
    end
end
