class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit]

  def index
    @lists = List.includes(:category).where.not(categories: { name: 'customization' })
  end

  def show

  end

  def new
    @list = List.new(category: Category.find_by_name('customization'))
  end

  def create

  end

  def edit

  end

  def update

  end

  private

  def set_list
    @list = List.find_by_id(params[:id])
  end
end