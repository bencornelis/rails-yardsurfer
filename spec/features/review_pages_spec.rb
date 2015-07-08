require 'rails_helper'

describe 'adding a review' do
  it "lets a logged in user to add a review to a listing" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    listing = FactoryGirl.create(:listing)
    visit listing_path(listing)
    click_on "Add Review"
    fill_in "Text", with: "test review"
    click_on "Submit"
    expect(page).to have_content("test review")
  end

  it "does not let a user add a review unless logged in" do
    user = FactoryGirl.create(:user)
    listing = FactoryGirl.create(:listing)
    visit listing_path(listing)
    click_on "Add Review"
    expect(page).to have_content("You need to sign in or sign up before continuing.")
  end
end
