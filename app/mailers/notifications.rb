class Notifications < ActionMailer::Base
  default from: "avinashkarnani@gmail.com"

  def trade(user)
    @user = user
    @greeting = "Your trade with USER 2 is complete"

    mail to: @user.email, :subject => "Your trade with USER 2 is complete!"
  end