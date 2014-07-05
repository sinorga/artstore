class CartItemsAddIndex < ActiveRecord::Migration
  def change
    add_index :cart_items, :cart_id
    add_index :cart_items, :product_id
  end
end
