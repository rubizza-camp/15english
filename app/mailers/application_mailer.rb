# frozen_string_literal: true

# comment for application mailer
class ApplicationMailer < ActionMailer::Base
  default from: "admin@15english.com"
  layout "mailer"
end
