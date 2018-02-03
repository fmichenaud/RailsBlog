class UsersController < ApplicationController
	before_action :user_find, only:[:show, :update, :edit, :destroy]
	before_action :authenticate_user!

	def index
		@users = User.all
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
			redirect_to user_path(@user)
		else
			render "new"
		end
	end
	def update
		@user = user_find
		if @user.update_attributes(user_params)
		  redirect_to user_path(@user)
		else
		  render 'edit'
		end
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
