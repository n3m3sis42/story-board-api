class Api::V1::ProjectsController < ApplicationController

  def create
    project = Project.create(project_params)
    render json: project
  end

  def index
    projects = Project.order("created_at DESC")
    render json: projects
  end

  def update
    project = Project.find(params[:id])
    project.update(project_params)
    render json: project
  end

  def destroy
    project = Project.find(params[:id])
    if project.destroy
      head :no_content, status: :ok
    else
      render json: project.errors, status: :unprocessable_entity
    end
  end


  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
