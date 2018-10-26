class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :search]

  def index
    @products = Product.all
  end

  def search
    @products = Product.where("name LIKE ?", "%#{params[:name]}%")
  end
end
