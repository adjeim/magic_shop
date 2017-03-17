class ProductsController < ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:user_id)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
