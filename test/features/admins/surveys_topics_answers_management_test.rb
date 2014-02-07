require "test_helper"

feature "admin wants to add or manage topics" do
  scenario "Admin wants to add a topic" do
    sign_in_admin
    visit topics_path
    click_on "New topic"
    fill_in "Description", with: topics(:topic).description
    fill_in "Survey ID", with: topics(:topic).survey_id
    click_on "Submit"
    assert page.has_content?("success")
  end
  scenario "admin wants to edit a topic" do
    sign_in_admin
    visit topics_path
    click_on "Edit"
    fill_in "Description", with: "BEEP!"
    click_on "Update"
    assert page.has_content?("BEEP")
  end
  scenario "admin wants to delete a topic" do
    sign_in_admin
    visit topics_path
    click_on "Destroy"
    click_on "OK"
    page.must_not_include("BEEP")
  end
end

feature "admin wants to add or manage surveys" do
  scenario "admin wants to add a survey" do
  end
  scenario "admin wants to edit a survey" do
  end
  scenario "admin wants to delete a survey" do
  end
end

feature "admin wants to add or manage questions" do
  scenario "admin wants to add a question" do
  end
  scenario "admin wants to edit a question" do
  end
  scenario "admin wants to delete a question" do
  end
end

feature "admin wants to add or edit answers" do
  scenario "admin wants to add an answer" do
  end
  scenario "admin wants to edit a question" do
  end
  scenario "admin wants to delete a question" do
  end
end