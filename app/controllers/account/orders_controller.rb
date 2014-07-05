class Account::OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders
    set_page_title "賬戶訂單列表"
    set_page_description "在此查看本賬戶所有訂單資訊"

  end
end
