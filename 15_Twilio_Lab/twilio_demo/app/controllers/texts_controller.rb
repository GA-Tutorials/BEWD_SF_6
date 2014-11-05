class TextsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def home
	end
 
  def send_text
  	client = Twilio::REST::Client.new 'Your Account SID', 'Your Auth Token'
  	message = client.messages.create from: "Your Twilio Phone Number", to: "Your Phone Number", body: "#{params[:message]}", media_url: "#{params[:link]}"
  	flash[:notice] = "Text Successfully Sent"
  	redirect_to root_path
  end
end
