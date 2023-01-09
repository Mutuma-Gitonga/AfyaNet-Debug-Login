# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Doctor Specialties

puts 'Creating specialties...'

Specialty.create!([
  {name: "General Practitioner"},
  {name: "Optician"},
  {name: "Dentist"},
  {name: "Nutritionist"},
  {name: "Psychiatrist"},
  {name: "Cardiologist"},
  {name: "Dermatologist"},
  {name: "Gastroenterologist"},
  {name: "Therapist"},
  {name: "Oncologist"},
  {name: "Paediatrician"},
  {name: "Gynaecologist"},
  {name: "Urologist"},
  {name: "Neurologist"},
  {name: "Ophthalmologist"},
  {name: "Immunologist"},
  {name: "Endocrinologist"},
  {name: "Rheumatologist"},
])

puts 'Specialties created!'

# Doctor
puts 'Creating Doctor'

Doctor.create!([{
  "first_name":"Ashley",
    "last_name":"Smith",
    "email":"ashley@gmail.com",
    "phone_number":"0712345906",
    "password":"@Ashley13",
    "password_confirmation":"@Ashley13",
    "licence_no": 54321,
    "specialty_id":3,
    "location":"Karen",
    "days_available_weekly":"monday,tuesday,wednesday,thursday",
    "contract_length":6,
    "specific_days_times_available":"10am - 16:45pm"
}])

puts 'Doctor created!'

# Patient
puts 'Creating Patient'

Patient.create!([{
  "first_name": "Sylvia",
    "last_name": "Kamau",
    "email":"sylvia@gmail.com",
    "phone_number": "0768372439",
    "location":"Karen",
    "date_of_birth":"01/07/1999",
    "password":"@Sylvia33",
    "password_confirmation":"@Sylvia33"
} ])

puts 'Patient created!'
