require "test_helper"

class EggGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @egg_group = egg_groups(:one)
  end

  test "should get index" do
    get egg_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_egg_group_url
    assert_response :success
  end

  test "should create egg_group" do
    assert_difference("EggGroup.count") do
      post egg_groups_url, params: { egg_group: { name: @egg_group.name } }
    end

    assert_redirected_to egg_group_url(EggGroup.last)
  end

  test "should show egg_group" do
    get egg_group_url(@egg_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_egg_group_url(@egg_group)
    assert_response :success
  end

  test "should update egg_group" do
    patch egg_group_url(@egg_group), params: { egg_group: { name: @egg_group.name } }
    assert_redirected_to egg_group_url(@egg_group)
  end

  test "should destroy egg_group" do
    assert_difference("EggGroup.count", -1) do
      delete egg_group_url(@egg_group)
    end

    assert_redirected_to egg_groups_url
  end
end
