# frozen_string_literal: true

# comment for application helper
module ApplicationHelper
  def flash_class(level)
    case level
    when "notice" then "alert alert-info"
    when "success" then "alert alert-success"
    when "error" then "alert alert-danger"
    when "alert" then "alert alert-warning"
    end
  end

  def present
    policies = %w(cookie age privacy_terms)
    policy_content = []
    policies.each do |policy|
      policy_content << PolicyManager::Config.rules.find { |o| o.name == policy }.terms.last
    end
    policy_content
  end
end
