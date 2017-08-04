class AddColumnToStory < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :company, :string
  end
end
