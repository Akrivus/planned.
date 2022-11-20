# frozen_string_literal: true

Devise.setup do |config|
  config.secret_key = ENV['SECRET_KEY']
  config.mailer_sender = 'noreply@plannedperiod.app'
  config.mailer = 'Devise::Mailer'
  config.parent_mailer = 'ActionMailer::Base'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.paranoid = true
  config.skip_session_storage = [:http_auth]

  config.send_email_changed_notification = true
  config.send_password_change_notification = true
  config.confirm_within = 1.day
  config.reconfirmable = true
  config.remember_for = 5.days
  config.expire_all_remember_me_on_sign_out = true
  config.extend_remember_period = false

  config.password_length = 9..128
  config.stretches = Rails.env.test? ? 1 : 12
  config.pepper = ENV['PASSWORD_PEPPER']
  config.reset_password_within = 6.hours
  config.sign_in_after_reset_password = true

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.lock_strategy = :failed_attempts
  config.unlock_keys = [:email]
  config.unlock_strategy = :both
  config.maximum_attempts = 20
  config.unlock_in = 1.hour
  config.last_attempt_warning = true
  config.sign_out_via = :delete
end
