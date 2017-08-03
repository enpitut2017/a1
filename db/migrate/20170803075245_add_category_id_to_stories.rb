class AddCategoryIdToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :category_id, :int
  end
end
