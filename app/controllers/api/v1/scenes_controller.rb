class Api::V1::ScenesController < ApplicationController

  def index
    scenes = Scene.all
    render json: scenes
  end

end
