class BikesController < ApplicationController
  def index
    @bikes = Bike.all
    @user = current_user
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new
    @bike.user_id = current_user.id
    @bike.year = params[:year]
    @bike.model = params[:model]
    @bike.manufacturer = params[:manufacturer]

    if @bike.save
      redirect_to "/bikes", :notice => "Bike created successfully."
    else
      render 'new'
    end
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])

    @bike.user_id = params[:user_id]
    @bike.year = params[:year]
    @bike.model = params[:model]
    @bike.manufacturer = params[:manufacturer]

    if @bike.save
      redirect_to "/bikes", :notice => "Bike updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @bike = Bike.find(params[:id])

    @bike.destroy

    redirect_to "/bikes", :notice => "Bike deleted."
  end
end
