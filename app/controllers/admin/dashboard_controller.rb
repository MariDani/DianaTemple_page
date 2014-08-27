class Admin::DashboardController < ApplicationController
	before_action :authenticate_user!
	before_action :aproved_only

	def index
		@users = User.all
	end

	def aproved		
		user = User.find(params[:id])
		user.aproved = true
		user.save
		redirect_to admin_dashboard_index_path
	end

	def disaproved		
		user = User.find(params[:id])
		user.aproved = false
		user.save
		redirect_to admin_dashboard_index_path
	end

	private  
  	def aproved_only
  		redirect_to '/pages/unauthorized' unless current_user.aproved
  	end
end