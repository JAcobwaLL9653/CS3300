require "rails_helper"
#require "/root/CS3300/spec/support/controller_macros.rb"

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end