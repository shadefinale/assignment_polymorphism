class BandsController < ApplicationController
  def index
    id_type = params[:location].downcase + "_id"
    @bands = params[:location].singularize.classify.constantize.find(params[id_type]).bands
  end
end
