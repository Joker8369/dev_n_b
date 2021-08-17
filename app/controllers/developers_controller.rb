class DevelopersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @developers = Developer.all
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
