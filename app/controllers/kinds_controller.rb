class KindsController < ApplicationController
  def index
    @kinds = Kind.all
    render('kinds/index.html.erb')
  end

  def new
    render('kinds/new.html.erb')
  end

  def show
    @kind = Kind.find(params[:id])
    render('kinds/show.html.erb')
  end

  def create
    @kind = Kind.create(params[:kind])
    render('kinds/success.html.erb')
  end

end
