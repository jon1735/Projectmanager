

class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to @property
    else 
      render :new
    end
  end
  
  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to properties_path
  end
  
  private

  def property_params
    params.require(:property).permit(:address, :vacancy, :lawn_care, :plumbing, :electrical, :realtor_id, :contractor_id)
  end
end
