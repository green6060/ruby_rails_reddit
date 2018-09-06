class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :update, :destroy]

  def index
    @subs = Sub.all
    #render :view_page
    #render :index (This is done by default, but can be overriden with syntax "render :view_page")
  end

  def show
    #@sub = Sub.find(params[:id])
    #render :show
  end

  def new
    @sub=Sub.new
    render partial: "form"
  end

  def create
    @sub=Sub.new(sub_params)

    if @sub.save
      redirect_to subs_path
    else
      render :new
    end

  end

  def edit
    #@sub = sub.find(params[:id])
    render partial: "form"
  end

  def update
    #@sub = sub.find(params[:id])

    if @sub.update(sub_params)
      #redirect_to subs_path(@sub)
      redirect_to @sub 
    else
      render :edit
    end

  end

  def destroy
    #@sub = sub.find(params[:id])
    @sub.destroy
    redirect_to subs_path
  end

  private
    def set_sub
      @sub = Sub.find(params[:id])
    end

    def sub_params
      params.require(:sub).permit(:name)
    end

end
