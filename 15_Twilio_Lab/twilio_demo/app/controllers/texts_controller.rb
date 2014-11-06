class TextsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def home
	end
 
  def send_text
  	client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
  	message = client.messages.create from: "+19493976355", to: "+19493382457", body: "#{params[:message]}", media_url: "#{params[:link]}"
  	flash[:notice] = "Text Successfully Sent"
  	redirect_to root_path
  end
end


