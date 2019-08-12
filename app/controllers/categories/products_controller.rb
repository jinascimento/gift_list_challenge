class Categories::ProductsController < ApplicationController
  def search
    @products = Product.where(search_params).page(params[:page]).per(params[:per_page] || 10)
  end

  private

  def search_params
    params.permit(:name, :category_id)
  end
end