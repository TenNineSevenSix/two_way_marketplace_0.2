json.array!(@tutor_profiles) do |tutor_profile|
  json.extract! tutor_profile, :id, :first_name, :last_name, :street_number, :street_address, :suburb, :state, :postcode, :country, :dob, :categories, :bio
  json.url tutor_profile_url(tutor_profile, format: :json)
end
