class Order < ActiveRecord::Base
  belongs_to :user
  has_many :items, :class_name => "OrderItem", :dependent => :destroy
  has_one :info, :class_name => "OrderInfo", :dependent => :destroy

  accepts_nested_attributes_for :info
  before_create :generate_token

  def set_payment_with!(method)
    self.update_column(:payment_method, method)
  end

  def pay!
    self.update_column(:paid, true)
  end

  def generate_token
    self.token = SecureRandom.uuid
  end

  def build_item_cache_from_cart(cart)
    cart.cart_items.each do |cart_item|
      item = items.build
      item.product_name = cart_item.product.title
      item.quantity = cart_item.quantity
      item.price = cart_item.product.price
      item.save
    end
  end

  def calculate_total!(current_cart)
    self.total = current_cart.total_price
    self.save
  end

  include AASM

  aasm do
    state :order_placed, :initial => true
    state :paid, :after_commit => :pay!
    event :make_payment do
      transitions :from => :order_placed, :to => :paid
    end

    state :shipping
    event :ship do
      transitions :from => :paid, :to => :shipping
    end

    state :shipped
    event :deliver do
      transitions :from => :shipping, :to => :shipped
    end

    state :order_cancelled
    event :cancell_order do
      transitions :from => [:order_placed, :paid ], :to => :order_cancelled
    end

    state :good_returned
    event :return_good do
      transitions :from => [:shipped ], :to => :good_returned
    end

  end
end
