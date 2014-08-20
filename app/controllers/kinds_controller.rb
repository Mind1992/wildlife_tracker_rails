class KindsController < ApplicationController
  def index
    @kinds = Kind.all
    render('kinds/index.html.erb')
  end

  def new
    @kind = Kind.new
    render('kinds/new.html.erb')
  end

  def show
    @kind = Kind.find(params[:id])
    @sighting = Sighting.new(date: params[:date],
                             latitude: params[:latitude],
                             longitude: params[:longitude],
                             kind_id: params[:kind_id],
                             region_id: params[:region_id])
    @region = Region.find(@kind.sightings.last.region_id)
    render('kinds/show.html.erb')
  end

  def create
    @kind = Kind.new(params[:kind])
    if @kind.save
      render('kinds/success.html.erb')
    else
      render('kinds/new.html.erb')
    end
  end

  def edit
    @kind = Kind.find(params[:id])
    render('kinds/edit.html.erb')
  end

  def update
    @kind = Kind.find(params[:id])
    if @kind.update(:name => params[:name])
      render('kinds/success.html.erb')
    else
      render('kinds/edit.html.erb')
    end
  end

  def destroy
    @kind = Kind.find(params[:id])
    @kind.destroy
    render('kinds/destroy.html.erb')
  end
end
