require 'test_helper'

class HacksControllerTest < ActionController::TestCase
  setup do
    @hack = hacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hack" do
    assert_difference('Hack.count') do
      post :create, hack: { direction: @hack.direction, distance: @hack.distance, heartbeat: @hack.heartbeat, mac: @hack.mac, name: @hack.name, sanc_latitude: @hack.sanc_latitude, sanc_longitude: @hack.sanc_longitude, self_latitude: @hack.self_latitude, self_longitude: @hack.self_longitude }
    end

    assert_redirected_to hack_path(assigns(:hack))
  end

  test "should show hack" do
    get :show, id: @hack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hack
    assert_response :success
  end

  test "should update hack" do
    patch :update, id: @hack, hack: { direction: @hack.direction, distance: @hack.distance, heartbeat: @hack.heartbeat, mac: @hack.mac, name: @hack.name, sanc_latitude: @hack.sanc_latitude, sanc_longitude: @hack.sanc_longitude, self_latitude: @hack.self_latitude, self_longitude: @hack.self_longitude }
    assert_redirected_to hack_path(assigns(:hack))
  end

  test "should destroy hack" do
    assert_difference('Hack.count', -1) do
      delete :destroy, id: @hack
    end

    assert_redirected_to hacks_path
  end
end
