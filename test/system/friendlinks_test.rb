require "application_system_test_case"

class FriendlinksTest < ApplicationSystemTestCase
  setup do
    @friendlink = friendlinks(:one)
  end

  test "visiting the index" do
    visit friendlinks_url
    assert_selector "h1", text: "Friendlinks"
  end

  test "creating a Friendlink" do
    visit friendlinks_url
    click_on "New Friendlink"

    fill_in "Name", with: @friendlink.name
    fill_in "Picture", with: @friendlink.picture
    fill_in "Subject", with: @friendlink.subject
    fill_in "Url", with: @friendlink.url
    click_on "Create Friendlink"

    assert_text "Friendlink was successfully created"
    click_on "Back"
  end

  test "updating a Friendlink" do
    visit friendlinks_url
    click_on "Edit", match: :first

    fill_in "Name", with: @friendlink.name
    fill_in "Picture", with: @friendlink.picture
    fill_in "Subject", with: @friendlink.subject
    fill_in "Url", with: @friendlink.url
    click_on "Update Friendlink"

    assert_text "Friendlink was successfully updated"
    click_on "Back"
  end

  test "destroying a Friendlink" do
    visit friendlinks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friendlink was successfully destroyed"
  end
end
