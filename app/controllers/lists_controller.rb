class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit]

  def index
    @lists = List.includes(:category)
  end

  def show

  end

  def new
    @list = List.new(category: Category.find_by_name('customization'))
    respond_to(&:js)
  end

  def create
    create_list = Lists::ListCreator.call(params_list)
    if create_list
      render :create
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

  def params_list
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find_by_id(params[:id])
  end
end