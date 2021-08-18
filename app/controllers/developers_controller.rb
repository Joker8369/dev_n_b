class DevelopersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find_dev, only: %i[show destroy edit update]
  def index
    @developers = Developer.all
  end

  def show
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(dev_params)
    @developer.owner = current_user

    if @developer.save
      redirect_to developers_path(@developer)
    else
      render :new
    end
  end

  def destroy
    @developer.delete
    redirect_to developers_path
  end

  def edit
  end

  def update
    if @developer.update(dev_params)
      redirect_to developer_path(@developer)
    else
      render :edit
    end
  end

  private

  def dev_params
    params.require(:developer).permit(:first_name, :last_name, :skills, :rating, :prog_langage,
                                      :work_zone, :price_day, :work_zone, :project_done)
  end

  def find_dev
    @developer = Developer.find(params[:id])
  end
end
