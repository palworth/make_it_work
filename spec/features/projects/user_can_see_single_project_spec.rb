require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  context 'I visit a project show page' do
    it 'shows me that project attributes' do
      challenge_1 = Challenge.create!(theme: 'Apartment Furnishings', project_budget: 1000)

      litfit = challenge_1.projects.create!(name: 'Litfit',
                              material: 'Lamp Shade')


  visit "/projects/#{litfit.id}"

      expect(page).to have_content(litfit.name)
      expect(page).to have_content("Challenge Theme: #{challenge_1.theme}")
      expect(page).to have_content("Material: #{litfit.material}")
    end

    it "shows me the number of contestants on the project" do
      challenge_1 = Challenge.create!(theme: 'Apartment Furnishings', project_budget: 1000)

      litfit = challenge_1.projects.create!(name: 'Litfit',
                              material: 'Lamp Shade')

      contestant_1 = Contestant.create!(name: "Pete", age: 30, hometown: "Medina, MN",
                                                                years_of_experience: 4)
      litfit.contestants << contestant_1

      visit "/projects/#{litfit.id}"
      expect(page).to have_content("Number of Contestants: 1")
    end
  end
end
