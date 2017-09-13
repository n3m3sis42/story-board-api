class Api::V1::ProjectsController < ApplicationController
  before_action :authorized

  def create
    project = Project.create(project_params.merge({user_id: current_user.id}))
    render json: project
  end

  def index
    projects = Project.where(user: current_user.id).order("updated_at DESC")
    render json: projects
  end

  def show
    project = Project.find(params[:id])
    render json: project.build_api_data
  end

  def update
    project = Project.find(params[:id])
    project.update(project_params)
    render json: project.build_api_data
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :user_id)
  end

end
