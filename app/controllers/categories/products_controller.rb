class Categories::ProductsController < ApplicationController
  def search
    @products = Product.search_on_elasticsearch(search_params[:name], search_params[:category_id],
                                                params[:page], params[:per_page]
    )
  end

  private

  def search_params
    params.permit(:name, :category_id)
  end
end