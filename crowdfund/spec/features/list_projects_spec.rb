require 'spec_helper'

describe "Viewing the list of projects" do
  
  it "shows three project names" do
    project1 = Project.create(name: "Fleye - Your Personal Flying Robot",
                              category: "Technology",
                              description: "Fleye is a whole new kind of drone. Safe, fun and autonomous. Invent the future of flying robots thanks to its open API and SDK.",
                              target_pledge_amount: 175000.00,
                              pledging_ends_on: 100.days.from_now,
                              website: "gofleye.com")

    project2 = Project.create(name: "Shooz: The World's First Modular-Tech Travel Shoe",
                              category: "Fashion",
                              description: "MODULAR-TECH patented footwear to Travel lighter, Customize and Reduce your carbon footprint.",
                              target_pledge_amount: 25000.00,
                              pledging_ends_on: 50.days.from_now,
                              website: "shoozmadeinitaly.com")

    project3 = Project.create(name: "Wurm - Ice Age RPG",
                              category: "Games",
                              description: "Survive perilous hunts & attempt legendary quests during the Ice Age of 35,000 years ago in this indie RPG.",
                              target_pledge_amount: 9000.00,
                              pledging_ends_on: 30.days.from_now,
                              website: "http://www.editions-icare.com/")

    visit projects_url

    expect(page).to have_text("3 Projects")
    expect(page).to have_text(project1.name)
    expect(page).to have_text(project2.name)
    expect(page).to have_text(project3.name)

    expect(page).to have_text(project1.description[0..9])
    expect(page).to have_text(project1.category)
    expect(page).to have_text("$175,000.00")
    expect(page).to have_text(project1.pledging_ends_on)
    expect(page).to have_text(project1.website)
  end

end