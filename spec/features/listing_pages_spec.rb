require "rails_helper"

describe "adding a listing" do
  it "lets a logged in user add a listing" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    click_on "Create Listing"
    fill_in "Name", with: "test lawn"
    fill_in "Location", with: "portland"
    click_on "Submit"
    expect(page).to have_content("test lawn")
  end

  it "doesn't let a user add a listing without logging in" do
    user = FactoryGirl.create(:user)
    visit new_listing_path
    expect(page).to have_content("You need to sign in or sign up before continuing.")
  end

  it "shows an error if a create listing fails" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    click_on "Create Listing"
    fill_in "Name", with: ""
    click_on "Submit"
    expect(page).to have_content("There was an error")
  end

end
