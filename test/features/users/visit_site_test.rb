require "test_helper"

feature "Mover who wishes to make intelligent decision regarding their move visits our site" do
  scenario "Mover visits entry portal" do
    visit root_path
  end
  scenario "Mover clicks link to start the moving decision quiz" do
    visit root_path
    click_link "Start the Quiz"
  end
end

# class Users::VisitSiteTest < Capybara::Rails::TestCase
#   test "sanity" do
#     visit root_path
#     assert_content page, "Hello World"
#     refute_content page, "Goobye All!"
#   end
# end
