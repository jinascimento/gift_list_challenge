class AddCategoryToList < ActiveRecord::Migration[5.2]
  def change
    add_reference :lists, :category, index: true, foreign_key: true
  end
end
