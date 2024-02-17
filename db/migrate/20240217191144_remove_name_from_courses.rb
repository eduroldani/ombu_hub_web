class RemoveNameFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_column :courses, :name, :string
  end
end
