# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
puts 'Seeding patients..'
patient1= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient2= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient3= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient4= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient5= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient6= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient7= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient8= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient9= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient10= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")
patient11= Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.free_email, password: "123", password_confirmation: "123", location:  Faker::Movies::LordOfTheRings.location, remember_me: yes, profile_picture: "")


puts 'Seeding doctor...'
doc1= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Anesthesiology', contract_length: "4 months", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc2= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Cardiology', contract_length: "6 months", days_available_weekly: 4, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc3= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Pediactrics', contract_length: "5 months", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc4= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'General Surgery', contract_length: "9 months", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc5= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Hematology', contract_length: "1 year", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc6= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Oncology', contract_length: "8 months", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc7= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Vascular', contract_length: "4 months", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc8= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Neurology', contract_length: "4 months", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc9= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Allergy and immunology', contract_length: "4 months", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc10= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Medical genetics', contract_length: "4 months", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )
doc11= Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email, password_digest: "254", licence_no: Faker::Movies::LordOfTheRings.character, location:  Faker::Movies::LordOfTheRings.location,specialty: 'Diagnostic radiology', contract_length: "4 months", days_available_weekly: 5, specific_days_times_available: "6am to 6pm every Monday", engaged: true )


puts 'Seeding medical_record...'
10.times do
    MedicalRecord.create(
        blood_pressure: "27c",
        temperature: 35,
        history: "Dull pain in left knee over the past 2 weeks",
        diagnosis: "Osteoarthritis",
        treatment: "Corticosteroids. Injections of a corticosteroid drug into your knee joint may help reduce the symptoms of an arthritis flare and provide pain relief that may last a few months. These injections aren't effective in all cases.",
        cost: 1000,
        patient_id: 1
    )
end
puts 'Seeding appointments..'
50.times do
  Appointment.create(
    doctor_id: 1,
    patient_id: rand(1..Patient.all.size),
    date: DateTime.new(2023 ,1,rand(1..30),rand(1..19),rand(1.60)),
    time: DateTime.new(2022,6,rand(1..30),rand(6..19),rand(1.60)),
    appointment_done: true
  )
end

puts 'Seeding messages..'
50.times do
  Message.create(
    doctor_id: 1,
    patient_id: rand(1..Patient.all.size),
    message_body: "You’re such a wonderful doctor and you always make me feel so safe. Thank you for being the best doctor for me."
  )
end


  puts "🌱 Seeding done..."
