require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  setup do
    @movie = movies(:one)
  end

  test "visiting the index" do
    visit movies_url
    assert_selector "h1", text: "Movies"
  end

  test "creating a Movie" do
    visit movies_url
    click_on "New Movie"

    fill_in "Country of origin", with: @movie.country_of_origin
    fill_in "Languages", with: @movie.languages
    fill_in "Production companies", with: @movie.production_companies
    fill_in "Release date", with: @movie.release_date
    fill_in "Short description", with: @movie.short_description
    fill_in "Storyline", with: @movie.storyline
    fill_in "Trailer url", with: @movie.trailer_url
    click_on "Create Movie"

    assert_text "Movie was successfully created"
    click_on "Back"
  end

  test "updating a Movie" do
    visit movies_url
    click_on "Edit", match: :first

    fill_in "Country of origin", with: @movie.country_of_origin
    fill_in "Languages", with: @movie.languages
    fill_in "Production companies", with: @movie.production_companies
    fill_in "Release date", with: @movie.release_date
    fill_in "Short description", with: @movie.short_description
    fill_in "Storyline", with: @movie.storyline
    fill_in "Trailer url", with: @movie.trailer_url
    click_on "Update Movie"

    assert_text "Movie was successfully updated"
    click_on "Back"
  end

  test "destroying a Movie" do
    visit movies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movie was successfully destroyed"
  end
end
