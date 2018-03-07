class ItemsController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user_id = @user.id

    if @item.save
      flash[:success] = "Item was added to the list!"
      redirect_to user_path(@user.id)
    else
      flash[:alert] = "Please resubmit item."
      redirect_to user_path(@user.id)
    end
  end
end
