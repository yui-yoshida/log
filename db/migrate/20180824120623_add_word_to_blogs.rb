class AddWordToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :word, :text
  end
end
