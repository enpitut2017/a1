class AddMonthToStory < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :month, :integer
  end
end
