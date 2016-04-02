class ResourcesController < ApplicationController
  before_action :set_resource, only: [:destroy]

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
