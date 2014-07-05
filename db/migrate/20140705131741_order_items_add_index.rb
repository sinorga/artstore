class OrderItemsAddIndex < ActiveRecord::Migration
  def change
    add_index :order_items, :order_id
  end
end
