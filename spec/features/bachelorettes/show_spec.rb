require 'rails_helper'

RSpec.describe "Bachelorette Show Page" do
  it "can see a backelorette's info" do
    bachelorette_1 = Bachelorette.create(name: "Hannah Brown",
                                          season_number: "15 - The Most Dramatic Season Yet!")

    visit "/bachelorettes/#{bachelorette_1.id}"

    expect(page).to have_content("Hannah Brown")
    expect(page).to have_content("Season 15 - The Most Dramatic Season Yet!")

    click_on "The Contestants"

    expect(current_path).to eq("/bachelorettes/#{bachelorette_1.id}/contestants")

    
  end
end
