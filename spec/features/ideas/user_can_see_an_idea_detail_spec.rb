require "rails_helper"

feature "user can see an idea detail" do
  scenario "successfully" do
    idea = Idea.create(title: "My Idea Title", description: "The idea description.")
    visit idea_path(idea.id)
    expect(page).to have_css "h1", text: "My Idea Title"
  end
end
