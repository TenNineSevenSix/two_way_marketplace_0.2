require 'test_helper'

class TaskListControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get task_list_new_url
    assert_response :success
  end

end
