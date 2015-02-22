class OrdersController < ApplicationController
	def index
		@finished_orders = Order.where(iscart: 1, user_id: current_user.id)
		@status = OrderStatus.all
	end
end
