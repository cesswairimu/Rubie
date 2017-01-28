class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
      flash[:notice]="Message from #{@contact.name}"
      @contact.update_spreadsheet
      redirect_to root_path
    else
      render 'new'
    end
  end
  def process_form
    if params[:name].blank?
      raise 'Name is blank!'
    end
    if params[:email].blank?
      raise 'Email is blank!'
    end
    if params[:content].blank?
      raise 'Message is blank!'
    end
    message = "Received request from #{params[:contact][:name]}"
    redirect_to root_path, :notice => message
  end

  private
  def secure_params
    params.require(:contact).permit(:name,:email,:content)
  end
end
