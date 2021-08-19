class DevelopersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find_dev, only: %i[show destroy edit update]
  def index
    @developers = Developer.all
    search_bar
    @markers = @developers.geocoded.map do |developer|
      {
        lat: developer.latitude,
        lng: developer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { developer: developer })
      }
    end
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
                                      :work_zone, :price_day, :work_zone, :project_done, :photo)
  end

  def find_dev
    @developer = Developer.find(params[:id])
  end

  def search_bar
    if params[:query].present?
      sql_query = "\ developers.first_name @@ :query \ OR developers.last_name @@ :query"
      @developers = @developers.where(sql_query, query: "%#{params[:query]}%")
    end
    if params[:min_price].present?
      @developers = @developers.where("developers.price_day >= ?", params[:min_price])
    end
    if params[:max_price].present?
      @developers = @developers.where("developers.price_day <= ?", params[:max_price])
    end
    if params[:town].present?
      @developers = @developers.where("developers.work_zone @@ :town", town: params[:town])
    end
    if params[:category].present?
      @developers = @developers.where(prog_langage: params[:category])
    end
  end
end
