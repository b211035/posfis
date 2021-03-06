class Admin::UsersController < AdminController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def show
	end

	private
    def set_user
      @user = User.find(params[:id])
    end
end
