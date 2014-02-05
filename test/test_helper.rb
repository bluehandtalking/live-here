#require 'simplecov'
#SimpleCov.start 'rails'

ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "capybara-webkit"
require "turn/autorun"
require 'capybara/dsl'

Capybara.default_driver = :webkit



class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end


class FeatureTest < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  register_spec_type(/integration$/, self)
end

Turn.config.format = :outline
