class Addblogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :content
      t.references :user

      t.timestamps
    end
  end
end
