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
