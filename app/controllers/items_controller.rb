# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :string           not null
#  area_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


include ItemsHelper

class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @area = Area.find(params[:area_id])
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    @item.save
    redirect_to areas_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to areas_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)

    flash.notice = "Item '#{@item.name}' Updated!"

    redirect_to areas_path
  end

end
