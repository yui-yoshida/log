class RemoveTestsFromBlogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :test, :string
    remove_column :blogs, :test2, :integer
  end
end
