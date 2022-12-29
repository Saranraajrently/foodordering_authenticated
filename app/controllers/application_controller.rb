class ApplicationController < ActionController::Base
            class ApplicationController < ActionController::Base
        
            protect_from_forgery with: :exception, prepend: true

            before_action :configure_permitted_parameters, if: :devise_controller?

            protected

            def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
            end
                
                before_action :store_user_location!, if: :storable_location?
                
                before_action :authenticate_user! 
            
                
                private
                def storable_location?
                    request.get? && is_navigational_format?  && !request.xhr? 
                end
            
                def store_user_location!
                    store_location_for(:user, request.fullpath)
                end
            
                    def after_sign_in_path_for(user)
                        user_menu_path(user) 
                    end

                end
        
end
