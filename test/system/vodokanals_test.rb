require "application_system_test_case"

class VodokanalsTest < ApplicationSystemTestCase
  setup do
    @vodokanal = vodokanals(:one)
  end

  test "visiting the index" do
    visit vodokanals_url
    assert_selector "h1", text: "Vodokanals"
  end

  test "creating a Vodokanal" do
    visit vodokanals_url
    click_on "New Vodokanal"

    fill_in "Acounter", with: @vodokanal.acounter
    fill_in "Address", with: @vodokanal.address
    fill_in "Director", with: @vodokanal.director
    fill_in "Email", with: @vodokanal.email
    fill_in "Full name", with: @vodokanal.full_name
    fill_in "Information", with: @vodokanal.information
    fill_in "Short name", with: @vodokanal.short_name
    fill_in "Tel 1", with: @vodokanal.tel_1
    fill_in "Tel 2", with: @vodokanal.tel_2
    fill_in "Tel 3", with: @vodokanal.tel_3
    click_on "Create Vodokanal"

    assert_text "Vodokanal was successfully created"
    click_on "Back"
  end

  test "updating a Vodokanal" do
    visit vodokanals_url
    click_on "Edit", match: :first

    fill_in "Acounter", with: @vodokanal.acounter
    fill_in "Address", with: @vodokanal.address
    fill_in "Director", with: @vodokanal.director
    fill_in "Email", with: @vodokanal.email
    fill_in "Full name", with: @vodokanal.full_name
    fill_in "Information", with: @vodokanal.information
    fill_in "Short name", with: @vodokanal.short_name
    fill_in "Tel 1", with: @vodokanal.tel_1
    fill_in "Tel 2", with: @vodokanal.tel_2
    fill_in "Tel 3", with: @vodokanal.tel_3
    click_on "Update Vodokanal"

    assert_text "Vodokanal was successfully updated"
    click_on "Back"
  end

  test "destroying a Vodokanal" do
    visit vodokanals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vodokanal was successfully destroyed"
  end
end
