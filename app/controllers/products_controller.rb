class ProductsController < ApplicationController

  def index
    @q = Product.search(params[:q])
    @products = @q.result(distinct: true)
    set_page_title "產品列表"
    set_page_description "可以在此收尋所有產品"
  end

  def show
    @product = Product.find(params[:id])
    @cart_item = current_cart.cart_items.build(quantity: 1)
    set_page_title @product.title
    set_page_description @product.description
  end

end
