class Lists::ProductItemsController < ApplicationController
  def new
    @list = List.find_by(id: params[:list_id])
  end

  def create
    create_product_item = Lists::ProductItems::ProductItemCreator.call(product_item_params, params[:product_ids])
    if create_product_item.include? true
      @list = List.find_by(id: product_item_params[:list_id])
      render :create
    else
      render :new
    end
  end

  def product_item_params
    params.permit(:list_id)
  end
end