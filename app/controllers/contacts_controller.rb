class ContactsController < ApplicationController
  def index
	@contact=Contact.new
  end

  def create
	@contact=Contact.create(params[:contact])
	if @contact.errors.blank?
		flash[:success]='Your message has already been sent.Thank you.'
		render :action => :index
	else
		render :action => :index
	end
  end


end
