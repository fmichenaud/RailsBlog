class UsersController < ApplicationController
	before_action :user_find, only:[:show, :update, :edit, :destroy]
	before_action :authenticate_user!, :except => [:show]

	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
	end
	def destroy
		@user = user_find.destroy
		flash[:success] = "utilisateur supprimé"
		redirect_to users_path
	end
	private
	def user_params
		params.require(:user).permit(:firstname, :lastname, :age)
	end
	def user_find
		@user = User.find(params[:id])
	end
	
end
