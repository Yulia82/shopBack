class ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :product_find, only: [:show, :update, :destroy]

    #GET    /products
    def index
        @products= Product.all()
    end

    def new
    end

    #GET    /products/:id
    def show
    end

    #POST   /products
    def create
        @product=Product.new(product_params)
        @product.save
        if @product.errors.empty?
           redirect_to @product
        else
           render json: @product.errors
        end
    end

    #PATCH  /products/:id
    def update
        @product = Product.find(params[:id])
        @product.update(product_params) if @product
        if @product.errors.empty?
            redirect_to @product
         else
            render json: @product.errors
         end
    end

    #DELETE /products/:id
    def destroy
        @product.destroy
        render 'destroy'
    end

    private

    def product_params
        params.require(:product).permit(:title, :description, :price)
    end

    def product_find
        @product = Product.find(params[:id])
    end
end
