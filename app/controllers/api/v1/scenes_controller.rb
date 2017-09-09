class Api::V1::ScenesController < ApplicationController
before_action :authorized

  def create
    scene = Scene.create(scene_params)
    render json: scene
  end

  def index
    scenes = Scene.order("created_at DESC")
    render json: scenes
  end

  def update
    scene = Scene.find(params[:id])
    scene.update(scene_params)
    render json: scene
  end

  def destroy
    scene = Scene.find(params[:id])
    if scene.destroy
      head :no_content, status: :ok
    else
      render json: scene.errors, status: :unprocessable_entity
    end
  end


  private

  def scene_params
    params.require(:scene).permit(:title, :notes, :x_coord, :y_coord, :project_id)
  end

end
