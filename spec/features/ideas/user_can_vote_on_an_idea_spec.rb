require "rails_helper"

feature "user can vote on an idea" do
    scenario "succesfully" do
        sign_in
        idea = Idea.create(title: "My title", description: "My description.")
        visit idea_path(idea.id)
        click_on "Upvote Idea"
        expect(page).to have_css ".vote-count", text: "1"
    end
end
