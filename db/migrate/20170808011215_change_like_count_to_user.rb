class ChangeLikeCountToUser < ActiveRecord::Migration[5.1]
  def up
    change_column :like_count, null: false, default: 0
  end
end
