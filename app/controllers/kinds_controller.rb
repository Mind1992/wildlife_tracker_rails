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
    @sighting = Sighting.find(params[:id])
    @region = Region.find(params[:region_id])
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
