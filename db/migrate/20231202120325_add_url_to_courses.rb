class AddUrlToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :url, :string
  end
end
