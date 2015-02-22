class AddIsCartToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :iscart, :integer
  end
end
