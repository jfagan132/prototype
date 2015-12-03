class GamesController < ApplicationController
    before_action :logged_in_user, only: [:index]
    before_action :admin_user,     only: :destroy
    
    def index
        @games = Game.all
    end
    
    def show
        @game = Game.find(params[:id])
    end
    
    def destroy
        Game.find(params[:id]).destroy
        flash[:success] = "Game deleted"
        redirect_to games_url
    end
    
    private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    # Confirms the correct user
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
