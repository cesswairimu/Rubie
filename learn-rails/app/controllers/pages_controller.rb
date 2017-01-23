class PagesController < ApplicationController
  def about
  end

  def contact
    params = { name: "cess", email:"cess@her.com", content: "Lorem ipsum the hdsrtdtrd"}

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
end
