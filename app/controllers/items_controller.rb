class ItemsController < ApplicationController
  def create
    @item = current_user.items.new(name: params[:item][:name])
    @item.save

    redirect_to user_path(current_user)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    
    redirect_to user_path(current_user)
  end
end
