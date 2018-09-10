class RemoveColumnBlogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :content, :text
  end
end
