class Cart < ActiveRecord::Base
  has_many :cart_items, :dependent => :destroy
  has_many :items, :through => :cart_items, :source => :product

  def del_product_from_cart(product)
    items.delete(product)
  end

  def add_product_to_cart(product, item_quantity)
    items << product
  end

  def total_price
    items.inject(0) {|sum, item| sum + item.price }
  end
end
