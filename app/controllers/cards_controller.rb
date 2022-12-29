class CardsController < ApplicationController
    def create
    @user = User.find(params[:user_id]) 
    @card = @user.cards.create(card_params)
    redirect_to user_path(@user)
   end

       def destroy
            @user = User.find(params[:user_id])
            @card = @user.cards.find(params[:id])
            @card.destroy
        
            redirect_to user_path(@user), status: :see_other
       end

   private 
       def card_params
           params.require(:card).permit(:card_name, :card_number)
       end
   
    
   end
   