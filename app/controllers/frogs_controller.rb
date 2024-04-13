class FrogsController < ApplicationController
  def index
    @frogs = Frog.all

    render json: @frogs
  end

  def show
    @frog = Frog.find(params[:id])

    render json: @frog
  end

  def new
    @frog = Frog.new
  end

  def create
    @frog = Frog.new(frog_params)

    if @frog.save
      redirect_to frog_path(@frog)
    else
      render :new
    end
  end

  def edit
    @frog = Frog.find(params[:id])
  end

  def update
    @frog = Frog.find(params[:id])

    if @frog.update(frog_params)
      redirect_to frog_path(@frog)
    else
      render :edit
    end
  end

  def destroy
    @frog = Frog.find(params[:id])
    @frog.destroy

    redirect_to frogs_path
  end

  private

  def frog_params
    params.require(:frog).permit(:name, :species, :health, :wins, :losses, :stamina, :rarity, :level)
  end
end
