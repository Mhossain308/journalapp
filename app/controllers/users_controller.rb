class UsersController < ApplicationController
    # def new 
    #     @user = User.new
    # end

    def create 
        @user = User.create(user_params)
        redirect_to categories_path(@user)
    end

    def login
    end

    def handle_login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to new_journal_entry_path
        else
            redirect_to login_path
        end
        end

    private 

   def user_params 
    params.require(:user).permit(:username, :password)
   end

end

