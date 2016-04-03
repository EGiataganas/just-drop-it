class ResourcesController < ApplicationController
  before_action :set_resource, only: [:destroy]
  before_action :authenticate_user!

  # GET /resources
  def index
    @resources = Resource.all
  end

  # GET /resources/new
  def new
    @resource = Resource.new
  end

  # POST /resources
  def create
    @resource = Resource.new(resource_params)
    @resource.user_id = current_user.id

    if @resource.save
      redirect_to resources_url, notice: 'Resource was successfully created.'
    else
      render :new
    end
  end

  # DELETE /resources/1
  def destroy
    @resource.destroy
    redirect_to resources_url, notice: 'Resource was successfully destroyed.'
  end

private

  # Use callbacks to share common setup or constraints between actions.
  def set_resource
    @resource = Resource.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def resource_params
    params.require(:resource).permit(:name, :file)
  end
end
