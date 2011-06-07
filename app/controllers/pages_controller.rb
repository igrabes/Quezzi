class PagesController < ApplicationController
  def home
    @home = "Home"
  end
  
  def about
    @about = "About"
  end
  
  def contact
    @contact = "Contact"
  end
  
  # def messages
  #     # Get the chat user by passing in the current cookie session
  #     @user = ChatUser.user(session)
  #   end
end
