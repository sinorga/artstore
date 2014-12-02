class CartsController < ApplicationController
  before_action :authenticate_user!, :only => [:checkout]

  def index
    set_page_title "購物車"
    set_page_description "購物車內容可在此檢閱，修改或移除"
  end

  def checkout
    @order = current_user.orders.build
    @info = @order.build_info
  end


end
