class ShirtsController < ApplicationController
    def initialize
        @shirts_arr = [{ id: 1, name: "Polka shirt", size: 'L' }] # per session persistence, instead of DB.
        # So I can focus on Rails without ActiveRecord (the ORM) or DB setup
    end

    def index
        render json: { shirts: @shirts_arr }
    end
end
