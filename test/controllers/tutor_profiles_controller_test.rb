require 'test_helper'

class TutorProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutor_profile = tutor_profiles(:one)
  end

  test "should get index" do
    get tutor_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_tutor_profile_url
    assert_response :success
  end

  test "should create tutor_profile" do
    assert_difference('TutorProfile.count') do
      post tutor_profiles_url, params: { tutor_profile: { bio: @tutor_profile.bio, categories: @tutor_profile.categories, country: @tutor_profile.country, dob: @tutor_profile.dob, first_name: @tutor_profile.first_name, last_name: @tutor_profile.last_name, postcode: @tutor_profile.postcode, state: @tutor_profile.state, street_address: @tutor_profile.street_address, street_number: @tutor_profile.street_number, suburb: @tutor_profile.suburb } }
    end

    assert_redirected_to tutor_profile_path(TutorProfile.last)
  end

  test "should show tutor_profile" do
    get tutor_profile_url(@tutor_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutor_profile_url(@tutor_profile)
    assert_response :success
  end

  test "should update tutor_profile" do
    patch tutor_profile_url(@tutor_profile), params: { tutor_profile: { bio: @tutor_profile.bio, categories: @tutor_profile.categories, country: @tutor_profile.country, dob: @tutor_profile.dob, first_name: @tutor_profile.first_name, last_name: @tutor_profile.last_name, postcode: @tutor_profile.postcode, state: @tutor_profile.state, street_address: @tutor_profile.street_address, street_number: @tutor_profile.street_number, suburb: @tutor_profile.suburb } }
    assert_redirected_to tutor_profile_path(@tutor_profile)
  end

  test "should destroy tutor_profile" do
    assert_difference('TutorProfile.count', -1) do
      delete tutor_profile_url(@tutor_profile)
    end

    assert_redirected_to tutor_profiles_path
  end
end
