class ItemsController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user_id = @user.id

    @item.save
    redirect_to user_path(@user.id)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy.save
    @user = User.find(current_user.id)
    redirect_to user_path(@user.id)
  end
end
