
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "capybara-webkit"
require "turn/autorun"
require 'capybara/dsl'

#require 'simplecov'
#SimpleCov.start 'rails'

Capybara.default_driver = :webkit

class ActiveSupport::TestCase
  # include Devise::TestHelpers
  fixtures :all
end

class FeatureTest < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
 # include Devise::TestHelpers
  register_spec_type(/integration$/, self)
end

def sign_in
  visit root_path
  click_on "Sign in"
  assert page.has_content?("Remember me")
  fill_in "Email", with: users(:user).email
  fill_in "Password", with: users(:user).password
  click_button "Sign in"
end

def sign_in_admin
  visit new_admin_session_path
  fill_in "Email", with: admins(:ed).email
  fill_in "Password", with: admins(:ed).password
  click_button "Sign in"
end
Turn.config.format = :outline


