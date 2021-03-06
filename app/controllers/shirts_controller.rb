class ShirtsController < ApplicationController
  def initialize
    super()
    @shirts_arr = [{ id: 1, name: 'Polka shirt', size: 'L' }] # per session persistence, instead of DB.
    # So I can focus on Rails without ActiveRecord (the ORM) or DB setup
  end

  skip_before_action :verify_authenticity_token
  before_action :dbfy

  def index
    # GET - list of all items
    render json: { shirts: @shirts_arr }
  end

  def show
    # GET - specific (item with matching id or any other attribute), '/shirts/:id'
    # the param string :id will be parsed and saved in 'params' object
    desired_id = params[:id].to_i
    desired_shirt = @shirts_arr.find { |shirt| shirt[:id] == desired_id }

    if desired_shirt
      render json: { shirt: desired_shirt }
    else
      render json: { message: 'Shirt not found' }
    end
  end

  def new
    # GET - Send HTML form for creating a new item (shirt), '/shirts/:id/new'
    # ignoring for now
    render html: 'Directly hit with a post request containing {name, size}'
  end

  def create
    # POST - create new item, '/shirts/'

    # here we'd need to parse the request body
    # this is also parsed and kept in params

    new_shirt = { id: @shirts_arr.length + 1, name: params[:name], size: params[:size] }
    @shirts_arr.push(new_shirt)

    render json: { shirts: @shirts_arr }
  end

  def destroy; end

  def update; end

  def dbfy
    @shirts_arr.push({ db: 'dbfiy ran' })
  end
end
