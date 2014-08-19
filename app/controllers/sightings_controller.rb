class SightingsController < ApplicationController
  def new
    kind = Kind.find(params[:kind_id])
    @sighting = kind.sightings.new
    render('sightings/new.html.erb')
  end

   def create
    kind = Kind.find(params[:kind_id])
    @sighting = Sighting.new(date: params[:date],
                             latitude: params[:latitude],
                             longitude: params[:longitude],
                             kind_id: params[:kind_id])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

end
