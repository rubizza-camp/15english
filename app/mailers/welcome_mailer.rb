# frozen_string_literal: true

# class WelcomeMailer
class WelcomeMailer < ApplicationMailer
  def welcome_send(user)
    @user = user
    attachments.inline["len9.png"] = File.read("#{Rails.root}/app/assets/images/len9.png")
    mail to: user.email, subject: "Welcome to fifteenglish"
  end
end
