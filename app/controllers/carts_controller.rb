class CartsController < ApplicationController
    def show
        @cartitem = Cartitem.find(params[:id])
    end
end
