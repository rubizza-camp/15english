# frozen_string_literal: true

require "rake"

namespace :send_remainder_mail_task do
  desc "It sends on Users email notifications"
  task send_mail: :environment do
    User.send_reminder_mail
  end
end
