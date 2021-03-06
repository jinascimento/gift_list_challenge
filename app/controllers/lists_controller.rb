class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit]

  def index
    @lists = List.includes(:category)
  end

  def show
     @product_items = ProductItem.where(list: @list).page(params[:page]).per(params[:per_page] || 10)
  end

  def new
    @list = List.new(category: Category.find_by_name('customization'))
    respond_to(&:js)
  end

  def create
    create_list = Lists::CustomizationListCreator.call(params_list)
    if create_list
      @lists = List.includes(:category)
      render :create
    else
      render :new
    end
  end

  private

  def params_list
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find_by_id(params[:id])
  end
end