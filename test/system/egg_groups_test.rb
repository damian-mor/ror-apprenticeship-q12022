require "application_system_test_case"

class EggGroupsTest < ApplicationSystemTestCase
  setup do
    @egg_group = egg_groups(:one)
  end

  test "visiting the index" do
    visit egg_groups_url
    assert_selector "h1", text: "Egg groups"
  end

  test "should create egg group" do
    visit egg_groups_url
    click_on "New egg group"

    fill_in "Name", with: @egg_group.name
    click_on "Create Egg group"

    assert_text "Egg group was successfully created"
    click_on "Back"
  end

  test "should update Egg group" do
    visit egg_group_url(@egg_group)
    click_on "Edit this egg group", match: :first

    fill_in "Name", with: @egg_group.name
    click_on "Update Egg group"

    assert_text "Egg group was successfully updated"
    click_on "Back"
  end

  test "should destroy Egg group" do
    visit egg_group_url(@egg_group)
    click_on "Destroy this egg group", match: :first

    assert_text "Egg group was successfully destroyed"
  end
end
