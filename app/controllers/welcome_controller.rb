class WelcomeController < ApplicationController
  def index
  	@item = Item.all
  end
end
