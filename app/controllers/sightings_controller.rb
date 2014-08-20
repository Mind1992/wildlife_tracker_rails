class SightingsController < ApplicationController
  def new
    kind = Kind.find(params[:kind_id])
    @sighting = kind.sightings.new
    render('sightings/new.html.erb')
  end

  def create
    kind = Kind.find(params[:kind_id])
    @region = Region.find(params[:region_id])
    @sighting = Sighting.new(date: params[:date],
                             latitude: params[:latitude],
                             longitude: params[:longitude],
                             kind_id: params[:kind_id],
                             region_id: params[:region_id])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

  def edit
    @kind = Kind.find(params[:kind_id])
    @sighting = Sighting.find(params[:sighting_id])
    render('sightings/edit.html.erb')
  end

  def update
    @kind = Kind.find(params[:kind_id])
    @sighting = Sighting.find(params[:sighting_id])
    if @sighting.update(date: params[:date],
                             latitude: params[:latitude],
                             longitude: params[:longitude])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end

  def destroy
    @kind = Kind.find(params[:kind_id])
    @sighting = Sighting.find(params[:sighting_id])
    @sighting.destroy
    render('sightings/destroy.html.erb')
  end

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def show
    @start_date = params[:sightings][:start_date]
    @end_date = params[:sightings][:end_date]
    @sightings = Sighting.where(:date => params[:sightings][:start_date]..params[:sightings][:end_date])
    render('sightings/show.html.erb')
  end

end
