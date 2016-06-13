json.array!(@student_profiles) do |student_profile|
  json.extract! student_profile, :id, :first_name, :last_name, :street_number, :street_address, :suburb, :state, :postcode, :country, :dob, :categories, :bio
  json.url student_profile_url(student_profile, format: :json)
end
