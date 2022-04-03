require "test_helper"

class ShoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shoe = shoes(:one)
  end

  test "should get index" do
    get shoes_url
    assert_response :success
  end

  test "should get new" do
    get new_shoe_url
    assert_response :success
  end

  test "should create shoe" do
    assert_difference("Shoe.count") do
      post shoes_url, params: { shoe: { color: @shoe.color, edition: @shoe.edition, model: @shoe.model, name: @shoe.name, year: @shoe.year } }
    end

    assert_redirected_to shoe_url(Shoe.last)
  end

  test "should show shoe" do
    get shoe_url(@shoe)
    assert_response :success
  end

  test "should get edit" do
    get edit_shoe_url(@shoe)
    assert_response :success
  end

  test "should update shoe" do
    patch shoe_url(@shoe), params: { shoe: { color: @shoe.color, edition: @shoe.edition, model: @shoe.model, name: @shoe.name, year: @shoe.year } }
    assert_redirected_to shoe_url(@shoe)
  end

  test "should destroy shoe" do
    assert_difference("Shoe.count", -1) do
      delete shoe_url(@shoe)
    end

    assert_redirected_to shoes_url
  end
end
