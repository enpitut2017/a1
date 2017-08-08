class ChangeLikeCountToStory < ActiveRecord::Migration[5.1]
  def up
    change_column :stories, :like_count, :integer, null: false, default: 0
  end
end
