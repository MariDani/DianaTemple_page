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
  		redirect_to '/pages/unauthorized' unless current_user.aproved
  end
end
