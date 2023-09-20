require "test_helper"

class MonthlyWorkoutesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monthly_workoutes_index_url
    assert_response :success
  end
end
