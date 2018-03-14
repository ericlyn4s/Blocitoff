class ItemsController < ApplicationController
  def create
    @item = current_user.items.new(name: params[:item][:name])
    @item.save
    @item.user_id = current_user.id

    redirect_to user_path(current_user)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to user_path(current_user)
  end
end
