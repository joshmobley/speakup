require "rails_helper"

feature "user can create ideas" do
  scenario "successfully" do
    visit new_idea_path
    fill_in "idea_title", with: "My Idea Title"
    fill_in "idea_description", with: "My idea description."
    click_on "Save Idea"
    visit root_path
    expect(page).to have_css "h3", text: "My Idea Title"
  end
end
