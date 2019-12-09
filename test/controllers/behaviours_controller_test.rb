require 'test_helper'

class BehavioursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @behaviour = behaviours(:one)
  end

  test "should get index" do
    get behaviours_url
    assert_response :success
  end

  test "should get new" do
    get new_behaviour_url
    assert_response :success
  end

  test "should create behaviour" do
    assert_difference('Behaviour.count') do
      post behaviours_url, params: { behaviour: { description: @behaviour.description, name: @behaviour.name, picture: @behaviour.picture } }
    end

    assert_redirected_to behaviour_url(Behaviour.last)
  end

  test "should show behaviour" do
    get behaviour_url(@behaviour)
    assert_response :success
  end

  test "should get edit" do
    get edit_behaviour_url(@behaviour)
    assert_response :success
  end

  test "should update behaviour" do
    patch behaviour_url(@behaviour), params: { behaviour: { description: @behaviour.description, name: @behaviour.name, picture: @behaviour.picture } }
    assert_redirected_to behaviour_url(@behaviour)
  end

  test "should destroy behaviour" do
    assert_difference('Behaviour.count', -1) do
      delete behaviour_url(@behaviour)
    end

    assert_redirected_to behaviours_url
  end
end
