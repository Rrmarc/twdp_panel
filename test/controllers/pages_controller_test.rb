require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get cohort" do
    get pages_cohort_url
    assert_response :success
  end

  test "should get course" do
    get pages_course_url
    assert_response :success
  end

  test "should get teacher" do
    get pages_teacher_url
    assert_response :success
  end

  test "should get student" do
    get pages_student_url
    assert_response :success
  end

end
