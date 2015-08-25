 class SetUpsController < ApplicationController
  def index
    @q = SetUp.ransack(params[:q])
    @set_ups = @q.result(:distinct => true).includes(:bike, :track)
    @user = current_user
    @set_up = SetUp.new
    if current_user.set_ups.last == nil
      @last_set_up = SetUp.new
      # @last_set_up = { id: 1, track_id: 1, laptime: 1.4, rider_weight: 180.0, bike_id: 4, comment: "novice group", subjective_rating: 5, conditions: "Dry", track_temperature: 76.0, ambient_temperature: 68.0, rear_tire_pressure: 30.0, front_tire_pressure: 30.0, rear_tire: "Dunlop Q3", front_tire: "Dunlop Q3", steering_head_angle: 24.0, front_suspension_preload: 5, front_suspension_compression: 5, front_suspension_damping: 5, front_suspension_spring_rate: 100.0, front_suspension_brand: "GSXR (KYB)", rear_suspension_preload: 5, rear_suspension_compression: 5, rear_suspension_damping: 5, rear_suspension_spring_rate: 750.0, rear_suspension_static_sag: 1.0, rear_suspension_sag: 3.0, rear_suspension_brand: "Ohlins", created_at: "2015-08-24 04:02:02", updated_at: "2015-08-24 04:02:57" }
    else
      @last_set_up = current_user.set_ups.last
    end
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
    @q = SetUp.ransack(params[:q])
    @set_ups = @q.result(:distinct => true).includes(:bike, :track)
    @set_up = SetUp.new
    @last_set_up = current_user.set_ups.last
    render 'find'
  end

  def readonly
    @user = User.find(params[:id])
    render 'readonly'
  end

  def destroy
    @set_up = SetUp.find(params[:id])

    @set_up.destroy

    redirect_to "/set_ups", :notice => "Set up deleted."
  end
end
