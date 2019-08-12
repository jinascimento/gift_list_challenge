class Lists::ProductItemsController < ApplicationController
  def new
    @list = List.find_by(id: params[:list_id])
  end
end