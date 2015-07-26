class PagesController < ApplicationController
  def home
  end

  def about
  end

  def history
  end

  def myvisits
  	@pins = current_user.pins.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
  end	

  def createguestbook
  end	
end
