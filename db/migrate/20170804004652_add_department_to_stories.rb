class AddDepartmentToStories < ActiveRecord::Migration[5.1]
  def change
    add_reference :stories, :department, foreign_key: true
  end
end
