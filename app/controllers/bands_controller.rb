class BandsController < ApplicationController
  def index
    @bands = bands_by_location_type(params[:location])
  end

  private
    def bands_by_location_type(location)
      id_type = location.singularize.downcase + "_id"
      location.singularize.classify.constantize.find(params[id_type]).bands
    end
end
