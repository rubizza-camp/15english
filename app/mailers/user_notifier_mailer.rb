# frozen_string_literal: true

# comment for application mailer
class UserNotifierMailer < ApplicationMailer
  default from: "from@example.com"

  def send_reminder_email(user)
    @user = user
    #binding.pry
    mail(to: @user.email,
         subject: "15english lesson remind")
  end
end
