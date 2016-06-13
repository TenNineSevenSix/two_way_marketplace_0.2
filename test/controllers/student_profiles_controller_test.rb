require 'test_helper'

class StudentProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_profile = student_profiles(:one)
  end

  test "should get index" do
    get student_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_student_profile_url
    assert_response :success
  end

  test "should create student_profile" do
    assert_difference('StudentProfile.count') do
      post student_profiles_url, params: { student_profile: { bio: @student_profile.bio, categories: @student_profile.categories, country: @student_profile.country, dob: @student_profile.dob, first_name: @student_profile.first_name, last_name: @student_profile.last_name, postcode: @student_profile.postcode, state: @student_profile.state, street_address: @student_profile.street_address, street_number: @student_profile.street_number, suburb: @student_profile.suburb } }
    end

    assert_redirected_to student_profile_path(StudentProfile.last)
  end

  test "should show student_profile" do
    get student_profile_url(@student_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_profile_url(@student_profile)
    assert_response :success
  end

  test "should update student_profile" do
    patch student_profile_url(@student_profile), params: { student_profile: { bio: @student_profile.bio, categories: @student_profile.categories, country: @student_profile.country, dob: @student_profile.dob, first_name: @student_profile.first_name, last_name: @student_profile.last_name, postcode: @student_profile.postcode, state: @student_profile.state, street_address: @student_profile.street_address, street_number: @student_profile.street_number, suburb: @student_profile.suburb } }
    assert_redirected_to student_profile_path(@student_profile)
  end

  test "should destroy student_profile" do
    assert_difference('StudentProfile.count', -1) do
      delete student_profile_url(@student_profile)
    end

    assert_redirected_to student_profiles_path
  end
end
