require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  context 'I visit the contestant index page' do
    it 'shows me all contestants and their  attributes' do
      contestant_1 = Contestant.create!(name: "Pete", age: 30, hometown: "Medina, MN",
                                        years_of_experience: 4)

      challenge_1 = Challenge.create!(theme: 'Apartment Furnishings', project_budget: 1000)

      litfit = challenge_1.projects.create!(name: 'Litfit',
                              material: 'Lamp Shade')

      contestant_1.projects << challenge_1.projects

      visit '/contestants'

    expect(page).to have_content(contestant_1.name)
    expect(page).to have_content("Litfit")
  end
  end
end
