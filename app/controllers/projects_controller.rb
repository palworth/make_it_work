class ProjectsController < ApplicationController
  # def index
  #   @projects = Project.all
  # end
  #
  # def new
  # end

  def show
    @project = Project.find(params[:id])
  end

  # def create
  #   project = Project.new({
  #         name: params[:name],
  #         material: params[:material]})
  # end

  end
