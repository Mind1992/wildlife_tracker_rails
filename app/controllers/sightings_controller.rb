class SightingsController < ApplicationController
  def new
    kind = Kind.find(params[:kind_id])
    @sighting = kind.sightings.new
    render('sightings/new.html.erb')
  end

   def create
    kind = Kind.find(params[:kind_id])
    @region = Region.new(name: params[:name])
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
end
