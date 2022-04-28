class ShirtsController < ApplicationController
    def initialize
        @shirts_arr = [{ id: 1, name: "Polka shirt", size: 'L' }] # per session persistence, instead of DB.
        # So I can focus on Rails without ActiveRecord (the ORM) or DB setup
    end

    def index # GET - list of all items
        render json: { shirts: @shirts_arr }
    end

    def show # GET - specific (item with matching id or any other attribute), '/shirts/:id'
    end

    def new # GET - Send HTML form for creating a new item (shirt), '/shirts/:id/new'
    end

    def create # POST - create new item, '/shirts/:id'
    end

    def destroy # DELETE - delete item with id, '/shirts/:id'
    end

    def update # PUT/PATCH - update item with id, '/shirts/:id/edit'
    end
end
