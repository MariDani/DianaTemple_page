class PagesController < ApplicationController
	before_action :authenticate_user!
	before_action :aproved_only, except: :unauthorized
	
  def documentation
  end

  def reconstruction
  end

  def unauthorized
  end

 private  
	  def aproved_only
	  	if current_user.aproved
	  	else 
	  		redirect_to '/pages/unauthorized'
	  	end
	  end
	end
