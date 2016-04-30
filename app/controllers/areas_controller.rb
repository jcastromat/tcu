# == Schema Information
#
# Table name: areas
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

include AreasHelper

class AreasController < ApplicationController


    def index
      @areas = Area.all
    end

    def show
      @area = Area.find(params[:id])
    end

    def new
      @area = Area.new
    end

    def create
      @area = Area.create(area_params)
      @area.save
      redirect_to area_path(@area)
    end

    def destroy
      @area = Area.find(params[:id])
      @area.destroy
      redirect_to areas_path
    end

    def edit
      @area = Area.find(params[:id])
    end

    def update
      @area = Area.find(params[:id])
      @area.update(area_params)

      flash.notice = "Area '#{@area.name}' Updated!"

      redirect_to area_path(@area)
    end

end
