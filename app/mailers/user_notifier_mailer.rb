# frozen_string_literal: true

# comment for application mailer
class UserNotifierMailer < ApplicationMailer
  def send_reminder_email(user)
    @user = user
    mail(to: @user.email,
         subject: "15english lesson remind")
  end
end
