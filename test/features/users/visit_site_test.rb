require "test_helper"

feature "Mover who wishes to make intelligent decision regarding their move visits our site" do
  scenario "Mover visits entry portal" do
    visit root_path
    page.must_have_content("Live")
  end
  scenario "Mover clicks link to start the moving decision quiz" do
    visit root_path
    click_link "Start the Quiz"
  end
  #scenario "Mover chooses an answer for each question" do
   # visit root_path
    #click_link "Start the Quiz"
    #topic.each select "A"
    #click_button "Tell Me Where to Move!"
    #assert page.should have_content "Type A"
  #end
end

#feature "Mover wants to know more about us" do
  #scenario "mover visits about us page" do
    #visit root_path
    #click "About Us"
    #assert page.should have_content "Who We Are"
  #end
#end

# feature "Mover wants to have an account with us" do
#   scenario "mover signs up" do
#     visit root_path
#     click_on "Sign up"
#     save_and_open_page
#     assert page.has_content?("confirmation")
#  end
# end



#feature "Mover wants to browse cities" do
 # scenario "mover visits browse cities page" do
  #  visit root_path
   # click_link "Browse Cities"
    #page.must_include "Seattle"
  #end
#end


