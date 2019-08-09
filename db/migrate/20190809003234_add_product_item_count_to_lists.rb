class AddProductItemCountToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :product_item_count, :integer
  end
end
