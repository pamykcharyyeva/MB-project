require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  setup do
    @newsletter = newsletters(:one)
    @story = stories(:one)
  end

  test "should get index" do
    get :index, params: { newsletter_id: @newsletter }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { newsletter_id: @newsletter }
    assert_response :success
  end

  test "should create story" do
    assert_difference('Story.count') do
      post :create, params: { newsletter_id: @newsletter, story: @story.attributes }
    end

    assert_redirected_to newsletter_story_path(@newsletter, Story.last)
  end

  test "should show story" do
    get :show, params: { newsletter_id: @newsletter, id: @story }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { newsletter_id: @newsletter, id: @story }
    assert_response :success
  end

  test "should update story" do
    put :update, params: { newsletter_id: @newsletter, id: @story, story: @story.attributes }
    assert_redirected_to newsletter_story_path(@newsletter, Story.last)
  end

  test "should destroy story" do
    assert_difference('Story.count', -1) do
      delete :destroy, params: { newsletter_id: @newsletter, id: @story }
    end

    assert_redirected_to newsletter_stories_path(@newsletter)
  end
end
