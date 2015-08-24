 class SetUpsController < ApplicationController
  def index
    @set_ups = SetUp.all
    @user = current_user
    @set_up = SetUp.new
    @last_set_up = current_user.set_ups.last
  end

  def show
    @set_up = SetUp.find(params[:id])
  end

  def new
    @set_up = SetUp.new
  end

  def create
    @set_up = SetUp.new
    @set_up.track_id = params[:track_id]
    @set_up.laptime = params[:laptime]
    @set_up.rider_weight = params[:rider_weight]
    @set_up.bike_id = params[:bike_id]
    @set_up.comment = params[:comment]
    @set_up.subjective_rating = params[:subjective_rating]
    @set_up.conditions = params[:conditions]
    @set_up.track_temperature = params[:track_temperature]
    @set_up.ambient_temperature = params[:ambient_temperature]
    @set_up.rear_tire_pressure = params[:rear_tire_pressure]
    @set_up.front_tire_pressure = params[:front_tire_pressure]
    @set_up.rear_tire = params[:rear_tire]
    @set_up.front_tire = params[:front_tire]
    @set_up.steering_head_angle = params[:steering_head_angle]
    @set_up.front_suspension_preload = params[:front_suspension_preload]
    @set_up.front_suspension_compression = params[:front_suspension_compression]
    @set_up.front_suspension_damping = params[:front_suspension_damping]
    @set_up.front_suspension_spring_rate = params[:front_suspension_spring_rate]
    @set_up.front_suspension_brand = params[:front_suspension_brand]
    @set_up.rear_suspension_preload = params[:rear_suspension_preload]
    @set_up.rear_suspension_compression = params[:rear_suspension_compression]
    @set_up.rear_suspension_damping = params[:rear_suspension_damping]
    @set_up.rear_suspension_spring_rate = params[:rear_suspension_spring_rate]
    @set_up.rear_suspension_static_sag = params[:rear_suspension_static_sag]
    @set_up.rear_suspension_sag = params[:rear_suspension_sag]
    @set_up.rear_suspension_brand = params[:rear_suspension_brand]

    if @set_up.save
      redirect_to "/set_ups", :notice => "Set up created successfully."
    else
      render 'new'
    end
  end

  def edit
    @set_up = SetUp.find(params[:id])
  end

  def update
    @set_up = SetUp.find(params[:id])

    @set_up.track_id = params[:track_id]
    @set_up.laptime = params[:laptime]
    @set_up.rider_weight = params[:rider_weight]
    @set_up.bike_id = params[:bike_id]
    @set_up.comment = params[:comment]
    @set_up.subjective_rating = params[:subjective_rating]
    @set_up.conditions = params[:conditions]
    @set_up.track_temperature = params[:track_temperature]
    @set_up.ambient_temperature = params[:ambient_temperature]
    @set_up.rear_tire_pressure = params[:rear_tire_pressure]
    @set_up.front_tire_pressure = params[:front_tire_pressure]
    @set_up.rear_tire = params[:rear_tire]
    @set_up.front_tire = params[:front_tire]
    @set_up.steering_head_angle = params[:steering_head_angle]
    @set_up.front_suspension_preload = params[:front_suspension_preload]
    @set_up.front_suspension_compression = params[:front_suspension_compression]
    @set_up.front_suspension_damping = params[:front_suspension_damping]
    @set_up.front_suspension_spring_rate = params[:front_suspension_spring_rate]
    @set_up.front_suspension_brand = params[:front_suspension_brand]
    @set_up.rear_suspension_preload = params[:rear_suspension_preload]
    @set_up.rear_suspension_compression = params[:rear_suspension_compression]
    @set_up.rear_suspension_damping = params[:rear_suspension_damping]
    @set_up.rear_suspension_spring_rate = params[:rear_suspension_spring_rate]
    @set_up.rear_suspension_static_sag = params[:rear_suspension_static_sag]
    @set_up.rear_suspension_sag = params[:rear_suspension_sag]
    @set_up.rear_suspension_brand = params[:rear_suspension_brand]

    if @set_up.save
      redirect_to "/set_ups", :notice => "Set up updated successfully."
    else
      render 'edit'
    end
  end

  def find
    render 'find'
  end

  def destroy
    @set_up = SetUp.find(params[:id])

    @set_up.destroy

    redirect_to "/set_ups", :notice => "Set up deleted."
  end
end
