class RestaurantAdminController < ApplicationController
    def index
            @restaurantadmin = RestaurantAdmin.all
    end
end
