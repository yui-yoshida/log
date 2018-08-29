class RemoveWordToBlogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :word, :string
  end
end
