# frozen_string_literal: true

# class WelcomeMailer
class WelcomeMailer < ApplicationMailer
  def welcome_send(user)
    @user = user
    mail to: user.email, subject: "Welcome to site", from: "example@example.com"
  end
end
