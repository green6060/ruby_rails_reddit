class SubsController < ApplicationController
  def index
    @subs = Sub.all
    #render :view_page
    #render :index (This is done by default, but can be overriden with syntax "render :view_page")
  end

  def show
    @sub = Sub.find(params[:id])
    #render :show
  end

  def new
  end

  def edit
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
