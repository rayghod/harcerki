class ClientOrdersController < ApplicationController
  before_action :set_client_order, only: [:show, :edit, :update, :destroy]

  # GET /client_orders
  # GET /client_orders.json
  def index
    @client_orders = Order.where(iscart: 1)
  end

  # GET /client_orders/1
  # GET /client_orders/1.json
  def show
  end

  # GET /client_orders/new
  def new

  end

  # GET /client_orders/1/edit
  def edit
  end

  # POST /client_orders
  # POST /client_orders.json
  # PATCH/PUT /client_orders/1
  # PATCH/PUT /client_orders/1.json
  def update
  end

  # DELETE /client_orders/1
  # DELETE /client_orders/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_order
      @client_order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_order_params
      params[:client_order]
    end
end
