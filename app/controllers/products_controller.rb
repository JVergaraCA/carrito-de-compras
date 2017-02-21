class ProductsController < ApplicationController
  def index

  	if params[:product_name].present? #comprueba si se envio algun parametro
  		@products=Product.where("name like ?", "%#{params[:product_name]}%")

  	else
  		@products=Product.all
  	end

  	if params[:product_cost].present?
  		@products=Product.where(cost:params[:product_cost].to_i)
  	end
  end

  def categories
    @categories=Category.all
  end


  def products
    @products=Product.all
  end

end
