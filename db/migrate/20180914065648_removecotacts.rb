class Removecotacts < ActiveRecord::Migration[5.1]
  def change
    drop_table:cotacts
  end
end
