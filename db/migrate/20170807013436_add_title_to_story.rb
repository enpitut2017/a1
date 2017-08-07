class AddTitleToStory < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :title, :text
  end
end
