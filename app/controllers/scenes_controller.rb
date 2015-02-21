class ScenesController < ApplicationController
  load_and_authorize_resource
  before_action :set_scene, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @scenes = Scene.all
    respond_with(@scenes)
  end

  def show
    respond_with(@scene)
  end

  def new
    @scene = Scene.new
    respond_with(@scene)
  end

  def edit
  end

  def create
    @scene = Scene.new(scene_params)
    @scene.save
    respond_with(@scene)
  end

  def update
    @scene.update(scene_params)
    respond_with(@scene)
  end

  def destroy
    @scene.destroy
    respond_with(@scene)
  end

  private
    def set_scene
      @scene = Scene.find(params[:id])
    end

    def scene_params
      params.require(:scene).permit(:name, :tag_list => [])
    end
end
