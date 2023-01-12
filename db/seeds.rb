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
  {name: "General Practitioner", 
  image:"https://img.freepik.com/free-photo/team-young-specialist-doctors-standing-corridor-hospital_1303-21199.jpg?size=626&ext=jpg"},
  {name: "Optician", 
  image:"https://images.unsplash.com/photo-1542432389-a40026383873?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8b3B0aWNpYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"},
  {name: "Dentist",
  image:"https://images.unsplash.com/photo-1606811971618-4486d14f3f99?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGVudGlzdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
},
  {name: "Nutritionist",
  image:"https://img.freepik.com/free-photo/fresh-fruits-with-measuring-tape-front-female-dietician-writing-clipboard_23-2147882148.jpg?size=626&ext=jpg"
},
  {name: "Psychiatrist",
  image:"https://img.freepik.com/free-photo/marriage-counselor-taking-notes-while-having-meeting-with-couple-office_637285-11122.jpg?size=626&ext=jpg"
},
  {name: "Cardiologist",image:"https://img.freepik.com/free-photo/african-american-doctor-man-with-thumbs-up-standing-corridor-hospital_1303-21234.jpg?size=626&ext=jpg"},
  {name: "Dermatologist", image:"https://img.freepik.com/free-photo/man-getting-facial-massage-clinic_107420-65133.jpg?size=626&ext=jpg"},
  {name: "Gastroenterologist",image:"Gastroenterologist"},
  {name: "Therapist",image:"https://images.unsplash.com/photo-1600427652630-f97cc4db10cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlcmFwaXN0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"},
  {name: "Oncologist",image:"https://img.freepik.com/free-photo/physician-consulting-his-patient-clinic_1303-17887.jpg?size=626&ext=jpg"},
  {name: "Paediatrician",image:"https://images.unsplash.com/photo-1632052999447-e542d08d4f7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBhZWRpYXRyaWNpYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"},
  {name: "Gynaecologist",image:"https://media.istockphoto.com/id/1394010257/photo/female-gynecologist-doctor-obtaining-a-cervical-smear.jpg?b=1&s=170667a&w=0&k=20&c=JC49aB5LLReinIhi6Qo90y3-UZ9Z7vsqFpu6rJ6oq_A="},
  {name: "Urologist",image:"https://media.istockphoto.com/id/1303917742/photo/urologist-shows-the-human-urinary-system-to-the-camera-modern-office-background-diagnosing.jpg?b=1&s=170667a&w=0&k=20&c=wAb6KhOO8tS78RffOVE_EoQk4X3v3oZzBb58VLrCpuc="},
  {name: "Neurologist",image:"https://img.freepik.com/free-photo/doctor-arranging-scanning-device-head-female-patient_482257-31612.jpg?size=626&ext=jpg"},
  {name: "Ophthalmologist",image:"https://images.unsplash.com/photo-1617651482504-4b0d8bf23ba0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8T3BodGhhbG1vbG9naXN0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"},
  {name: "Immunologist",image:"https://images.unsplash.com/photo-1600443271532-d7370b84494b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGltbXVuZSUyMGRvY3RvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"},
  {name: "Endocrinologist",image:"https://img.freepik.com/free-photo/endocrinologist-examining-throat-young-woman-clinic-women-with-thyroid-gland-test-endocrinology-hormones-treatment-inflammation-sore-throat_657921-270.jpg?size=626&ext=jpg"},
  {name: "Rheumatologist",image:"https://img.freepik.com/free-photo/chiroptractor-doing-osteopathic-massage-aged-patient-hand-muscle-recovery-nurse-giving-assistance-stretch-arm-joint-senior-man-osteopathy-treatment-healthcare_482257-31868.jpg?size=626&ext=jpg"},
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
