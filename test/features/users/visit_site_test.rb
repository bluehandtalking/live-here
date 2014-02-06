require "test_helper"

feature "Mover who wishes to make intelligent decision regarding their move visits our site" do
  scenario "Mover visits entry portal" do
    visit root_path
    page.must_include "Contact Us"
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
    #page.must_include "Type A"
  #end
end

#feature "Mover wants to know more about us" do
  #scenario "mover visits about us page" do
    #visit root_path
    #click "About Us"
    #page.must_include "Who We Are"
  #end
#end

feature "Mover wants to have an account with us" do
  scenario "mover signs up" do
    visit root_path
    click_link "Sign Up"
    page.must_include "Password Confirmation"
  end
  scenario "mover signs in" do
   sign_in(:user)
   page.must_include "Signed"
 end
end



#feature "Mover wants to browse cities" do
 # scenario "mover visits browse cities page" do
  #  visit root_path
   # click_link "Browse Cities"
    #page.must_include "Seattle"
  #end
end


