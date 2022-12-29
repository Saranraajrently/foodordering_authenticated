class UsersController < ApplicationController
    def index
        @user = User.all
    end
    
        http_basic_authenticate_with name: "Saran", password: "Test@12345", only: :home
      
        def index
          @users = User.all.order("id ASC") # Returns all users sorted in ascending order by name
      
        end
        def home
          @user = User.all
        end
      
          def show
          @user = User.find(params[:id])
        end
        def new
          @user = User.new
        end
      
        def create
          @user = User.new(user_params)
      
          if @user.save
            redirect_to @user
          else
            render :new, status: :unprocessable_entity
          end
        end
      
        def edit
          @user = User.find(params[:id])
        end
      
        def update
          @user = User.find(params[:id])
      
          if @user.update(user_params)
            redirect_to @user
          else
            render :edit, status: :unprocessable_entity
          end
        end
      
      
        def destroy
          @user = User.find(params[:id])
          @user.destroy
      
          redirect_to root_path, status: :see_other
        end
      
        
        private
         def user_params
           params.require(:user).permit(:username,:user_password, :user_address,:user_phonenumber)
         end
      
      
      
    # def show
    #      @menus = Menu.all
    # end
    # private 
    # def show_menu
    #     @menus = Menu.all
    # end

end
