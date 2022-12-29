class MenusController < ApplicationController

    def index
    @menus =Menu.all
    end

    def new
        @menu = Menu.new
      end
    
      def create
        @menu = Menu.new(menu_params)
    
        if @menu.save
          redirect_to @menu
        else
          render :new, status: :unprocessable_entity
        end
      end

      private
   def menu_params
     params.require(:menu).permit(:menu_name,:menu_price, :menu_type,:menu_image)
   end

end
