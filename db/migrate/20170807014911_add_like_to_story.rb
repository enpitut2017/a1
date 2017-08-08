class AddLikeToStory < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :like_count, :integer, null: false, default: 0
  end
end
