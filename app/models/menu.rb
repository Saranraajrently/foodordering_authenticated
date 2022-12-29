class Menu < ApplicationRecord
    def show
        @menus= Menu.all
    end
    
end
