class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
    @set_ups =SetUp.all
    @average_spring_rate_global = @set_ups.average(:front_suspension_spring_rate)
    @this_tracks_set_ups = SetUp.where(:track_id => (params[:id]))
    @global_count = @set_ups.count
    @local_count = @this_tracks_set_ups.count
    @average_spring_rate_local = @this_tracks_set_ups.average(:front_suspension_spring_rate)
    if @average_spring_rate_global > @average_spring_rate_local
      @spring_comparison = "harder than"
    elsif @average_spring_rate_global < @average_spring_rate_local
      @spring_comparison = "softer than"
    else
      @spring_comparison = "the same as"
    end
    @average_shock_rate_global = @set_ups.average(:rear_suspension_spring_rate)
    @average_shock_rate_local = @this_tracks_set_ups.average(:rear_suspension_spring_rate)
    if @average_shock_rate_global > @average_shock_rate_local
      @shock_comparison = "harder than"
    elsif @average_shock_rate_global < @average_shock_rate_local
      @shock_comparison = "softer than"
    else
      @shock_comparison = "the same as"
    end

  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new
    @track.address = params[:address]
    @track.name = params[:name]

    if @track.save
      redirect_to "/tracks", :notice => "Track created successfully."
    else
      render 'new'
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])

    @track.address = params[:address]
    @track.name = params[:name]

    if @track.save
      redirect_to "/tracks", :notice => "Track updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @track = Track.find(params[:id])

    @track.destroy

    redirect_to "/tracks", :notice => "Track deleted."
  end
end
