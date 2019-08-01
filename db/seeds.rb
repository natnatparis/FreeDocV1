# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Création de 2 fake users
#User.create(first_name: "jean", email:"jean@jean.jean")
#ser.create(first_name: "paul", email:"paul@paul.paul")
#puts "Deux utilisateurs ont été créés"


#Permet de créer une liste de faux objets avec la gem Faker
require 'faker'

#Permet de supprimer les informations précédements stockées afin de disposer d'un tableau MAJ
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
JoinDocSpec.destroy_all

#Boucle permettant d'afficher les "fake" objets
100.times do

  city_name = City.create!(name: Faker::Address.city)
  doctor_rand = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Name.last_name, city: city_name )
  patient_rand = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: city_name)
  appointment_rand = Appointment.create!(date: Faker::Date.forward,doctor:doctor_rand,patient: patient_rand, city: city_name)
  specialty_rand = Specialty.create!(job: Faker::Educator.subject)
  join_doc_spec = JoinDocSpec.create!(doctor:doctor_rand,specialty: specialty_rand)

end
