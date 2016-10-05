## UserNotifierMailer
# used for customer email communications
class UserNotifierMailer < ApplicationMailer
  default :from => 'bootstrap@startup.ennovar.io'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  # TODO: create a couple other functions for stuff besides user signup
  def send_signup_email(user, email)
    @user = user
    @email = email
    mail( :to => @user.email,
    :email => email.subject )
  end
end
