require 'spec_helper'

describe "Viewing an individual project" do

  it "shows the project's details" do
    project = Project.create(name: "Fleye - Your Personal Flying Robot",
                              category: "Technology",
                              description: "Fleye is a whole new kind of drone. Safe, fun and autonomous. Invent the future of flying robots thanks to its open API and SDK.",
                              target_pledge_amount: 175000.00,
                              pledging_ends_on: 100.days.from_now,
                              website: "gofleye.com")

    visit project_path(project)

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description)
    expect(page).to have_text(project.category)
    expect(page).to have_text("$175,000.00")
    expect(page).to have_text(project.pledging_ends_on)
    expect(page).to have_text(project.website)
  end

end