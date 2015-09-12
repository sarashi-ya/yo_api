class Api::V1::UsersController < ApplicationController
	protect_from_forgery :except => [:create,:search]
	def index
		@users = User.all
		render json: @users
	end

	def search
		@users = User.where("user_name like ?", "%#{params[:search_name]}%")
		if @user.blank?
			render json: {message: 'そんなユーザーはいません'}, status: 500
		else
			render json: @users,status: :ok
		end
	end

  def create
  	@newUser = User.create(user_params)
		render :json => @newUser, status: :created 
  end

  def show
  	 @user = User.find(params[:id])
     render json: @user
  end

  private

		def user_params
	 		params.permit(:user_name,:password,:user_token, :gcm_id)
		end
end
