require "application_system_test_case"

class PokemonsTest < ApplicationSystemTestCase
  setup do
    @pokemon = pokemons(:one)
  end

  test "visiting the index" do
    visit pokemons_url
    assert_selector "h1", text: "Pokemons"
  end

  test "should create pokemon" do
    visit pokemons_url
    click_on "New pokemon"

    check "Has gender differences" if @pokemon.has_gender_differences
    check "Is baby" if @pokemon.is_baby
    check "Is legendary" if @pokemon.is_legendary
    fill_in "Is mythical", with: @pokemon.is_mythical
    fill_in "Name", with: @pokemon.name
    click_on "Create Pokemon"

    assert_text "Pokemon was successfully created"
    click_on "Back"
  end

  test "should update Pokemon" do
    visit pokemon_url(@pokemon)
    click_on "Edit this pokemon", match: :first

    check "Has gender differences" if @pokemon.has_gender_differences
    check "Is baby" if @pokemon.is_baby
    check "Is legendary" if @pokemon.is_legendary
    fill_in "Is mythical", with: @pokemon.is_mythical
    fill_in "Name", with: @pokemon.name
    click_on "Update Pokemon"

    assert_text "Pokemon was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokemon" do
    visit pokemon_url(@pokemon)
    click_on "Destroy this pokemon", match: :first

    assert_text "Pokemon was successfully destroyed"
  end
end