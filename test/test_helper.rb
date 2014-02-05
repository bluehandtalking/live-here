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
  include Devise::TestHelpers
  fixtures :all
end


class FeatureTest < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  include Devise::TestHelpers

  register_spec_type(/integration$/, self)
end


Turn.config.format = :outline


