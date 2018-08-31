# frozen_string_literal: true

# comment for application mailer
class ApplicationMailer < ActionMailer::Base
  default from: "15@english.com"
  layout "mailer"
end
