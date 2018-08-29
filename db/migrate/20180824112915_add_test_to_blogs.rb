class AddTestToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :test, :string
    add_column :blogs, :test2, :integer
  end
end
