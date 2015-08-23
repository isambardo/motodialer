class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
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
