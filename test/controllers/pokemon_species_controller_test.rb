require 'test_helper'

class PokemonSpeciesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokemon_species_index_url
    assert_response :success
  end

  test "should get show" do
    get pokemon_species_show_url
    assert_response :success
  end

end
