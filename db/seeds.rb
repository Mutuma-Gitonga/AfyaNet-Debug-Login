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
