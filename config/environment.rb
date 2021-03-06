# frozen_string_literal: true

# Load the Rails application.
require File.expand_path('application', __dir__)

ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: '25',
  authentication: :plain,
  user_name: ENV['SENDGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  domain: 'infascination.com',
  enable_starttls_auto: true,
}

# Initialize the Rails application.
Rails.application.initialize!
