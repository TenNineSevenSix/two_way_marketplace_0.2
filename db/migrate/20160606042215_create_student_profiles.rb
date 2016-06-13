class CreateStudentProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :student_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_number
      t.string :street_address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.date :dob
      t.text :categories
      t.text :bio

      t.timestamps
    end
  end
end
