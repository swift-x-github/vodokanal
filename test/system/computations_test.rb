require "application_system_test_case"

class ComputationsTest < ApplicationSystemTestCase
  setup do
    @computation = computations(:one)
  end

  test "visiting the index" do
    visit computations_url
    assert_selector "h1", text: "Computations"
  end

  test "creating a Computation" do
    visit computations_url
    click_on "New Computation"

    fill_in "Account", with: @computation.account_id
    fill_in "B period", with: @computation.b_period
    fill_in "E period", with: @computation.e_period
    fill_in "Name", with: @computation.name
    fill_in "Price", with: @computation.price
    fill_in "Summa", with: @computation.summa
    fill_in "Water consumption", with: @computation.water_consumption
    click_on "Create Computation"

    assert_text "Computation was successfully created"
    click_on "Back"
  end

  test "updating a Computation" do
    visit computations_url
    click_on "Edit", match: :first

    fill_in "Account", with: @computation.account_id
    fill_in "B period", with: @computation.b_period
    fill_in "E period", with: @computation.e_period
    fill_in "Name", with: @computation.name
    fill_in "Price", with: @computation.price
    fill_in "Summa", with: @computation.summa
    fill_in "Water consumption", with: @computation.water_consumption
    click_on "Update Computation"

    assert_text "Computation was successfully updated"
    click_on "Back"
  end

  test "destroying a Computation" do
    visit computations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Computation was successfully destroyed"
  end
end
