class ShirtsController < ApplicationController
    def index
        render json: { shirts: "All shirts" }
    end
end
