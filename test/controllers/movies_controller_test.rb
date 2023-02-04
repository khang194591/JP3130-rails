require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get movies_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_url
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post movies_url, params: { movie: { country_of_origin: @movie.country_of_origin, languages: @movie.languages, production_companies: @movie.production_companies, release_date: @movie.release_date, short_description: @movie.short_description, storyline: @movie.storyline, trailer_url: @movie.trailer_url } }
    end

    assert_redirected_to movie_url(Movie.last)
  end

  test "should show movie" do
    get movie_url(@movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_url(@movie)
    assert_response :success
  end

  test "should update movie" do
    patch movie_url(@movie), params: { movie: { country_of_origin: @movie.country_of_origin, languages: @movie.languages, production_companies: @movie.production_companies, release_date: @movie.release_date, short_description: @movie.short_description, storyline: @movie.storyline, trailer_url: @movie.trailer_url } }
    assert_redirected_to movie_url(@movie)
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete movie_url(@movie)
    end

    assert_redirected_to movies_url
  end
end
