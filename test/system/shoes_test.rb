require "application_system_test_case"

class ShoesTest < ApplicationSystemTestCase
  setup do
    @shoe = shoes(:one)
  end

  test "visiting the index" do
    visit shoes_url
    assert_selector "h1", text: "Shoes"
  end

  test "should create shoe" do
    visit shoes_url
    click_on "New shoe"

    fill_in "Color", with: @shoe.color
    fill_in "Edition", with: @shoe.edition
    fill_in "Model", with: @shoe.model
    fill_in "Name", with: @shoe.name
    fill_in "Year", with: @shoe.year
    click_on "Create Shoe"

    assert_text "Shoe was successfully created"
    click_on "Back"
  end

  test "should update Shoe" do
    visit shoe_url(@shoe)
    click_on "Edit this shoe", match: :first

    fill_in "Color", with: @shoe.color
    fill_in "Edition", with: @shoe.edition
    fill_in "Model", with: @shoe.model
    fill_in "Name", with: @shoe.name
    fill_in "Year", with: @shoe.year
    click_on "Update Shoe"

    assert_text "Shoe was successfully updated"
    click_on "Back"
  end

  test "should destroy Shoe" do
    visit shoe_url(@shoe)
    click_on "Destroy this shoe", match: :first

    assert_text "Shoe was successfully destroyed"
  end
end
