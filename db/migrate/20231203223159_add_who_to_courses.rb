class AddWhoToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :who, :string
  end
end
