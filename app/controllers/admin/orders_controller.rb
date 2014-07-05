class Admin::OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  before_action :find_order, except: [:index]

  def show

    @order_info = @order.info
    @order_items = @order.items
    set_page_title "管理訂單"
    set_page_description "在此管理訂單狀態"

  end

  def index
    @orders = Order.all
    set_page_title "管理訂單列表"
    set_page_description "在此可查看所有商店所有訂單"

  end

  def state_transition
    @order.send(params[:event])
    save_and_redirect_to_show
  end

  private
  def find_order
    @order = Order.find(params[:id])
  end

  def save_and_redirect_to_show
    @order.save
    redirect_to admin_order_path(@order)
  end
end
