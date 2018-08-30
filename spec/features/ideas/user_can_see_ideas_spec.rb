require "rails_helper"

feature "user can see ideas" do

    scenario "successfully" do
        sign_in
        Idea.create(title: "Idea Title", description: "This is an idea description")
        visit root_path
        expect(page).to have_css "h3", text: "Idea Title"
    end

end