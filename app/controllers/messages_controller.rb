class MessagesController < ApplicationController
  def index
    if @authentications = current_user
      @messages = Message.all
    else
      redirect_to authentications_url
      flash[:notice] = "You need to sign in before answering questions"
    end
  end
  
  def create
    @user = User.find(params[:message][:user_id])
    @message = @user.messages.create!(params[:message])
  end
end
