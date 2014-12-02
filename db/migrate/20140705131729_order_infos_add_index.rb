class OrderInfosAddIndex < ActiveRecord::Migration
  def change
    add_index :order_infos, :order_id
  end
end
