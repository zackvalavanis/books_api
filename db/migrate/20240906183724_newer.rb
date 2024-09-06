class Newer < ActiveRecord::Migration[7.1]
  def up
    change_column :books, :price, :decimal, precision:10, scale:3, using: 'price::decimal'
  end
  def down 
    change_column :books, :price, :string
  end 
end