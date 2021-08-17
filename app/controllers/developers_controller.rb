class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end
end
