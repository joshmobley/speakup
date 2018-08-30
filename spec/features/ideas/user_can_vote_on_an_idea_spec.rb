require "rails_helper"

feature "user can vote on an idea" do
  scenario "succesfully" do
    idea = Idea.create(title: "My title", description: "My description.")
    visit idea_path(idea.id)
    click_on "Upvote Idea"
    expect(page).to have_css ".vote-count", text: "1"
  end
end
