# frozen_string_literal: true

PolicyManager::Config.setup do |c|
  c.is_admin_method = ->(o) { o.admin }

  c.add_rule(name: "cookie", sessionless: true)
  c.add_rule(name: "age", validates_on: [:create, :update], blocking: true)
  c.add_rule(name: "privacy_terms", validates_on: [:create, :update], blocking: true)
end

# If you are using devise, you must extend engines's controller with devise helpers
# in order to get current_user
PolicyManager::UserTermsController.send(:include, Devise::Controllers::Helpers)
