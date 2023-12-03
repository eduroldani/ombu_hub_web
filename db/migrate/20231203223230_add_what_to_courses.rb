class AddWhatToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :what, :string
  end
end
