class OrdersController < ApplicationController
  before_action :authenticate_user!
  def show
    @order =  current_user.orders.find_by_token(params[:id])
    @order_info = @order.info
    @order_items = @order.items
    set_page_title "訂單"
    set_page_description "訂單資訊頁面"
  end

  def create
    @order = current_user.orders.build(order_params)

    if @order.save
      OrderPlacingService.new(current_cart, @order).place_order!
      redirect_to order_path(@order.token)
    else
      set_page_title "購物車"
      set_page_description "購物車內容可在此檢閱，修改或移除"
      render "carts/index"
    end
  end

  def pay_with_credit_card
    @order = current_user.orders.find_by_token(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:info_attributes => [:billing_name, :billing_address,:shipping_name, :shipping_address] )
  end
end
