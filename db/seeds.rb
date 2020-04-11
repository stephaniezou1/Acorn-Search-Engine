# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Zipcode.destroy_all
Parent.destroy_all

50.times do
    zipcode = Zipcode.create(zipcode_num: Faker::Address.zip_code)
    parent = Parent.create!(
        username: Faker::Name.unique.first_name, 
        password: Faker::GreekPhilosophers.name, 
        email: Faker::Internet.unique.email, 
        zipcode_id: zipcode.id)
    organization = Organization.create!(
        name: Faker::Company.name, 
        street: Faker::Address.street_address, 
        apt_num: Faker::Address.secondary_address, 
        city: Faker::Address.city, 
        state: Faker::Address.state, 
        zipcode_id: zipcode.id)
    activity = Activity.create!(
        name: "Name of the Afterschool Activity Goes Here", 
        organization_id: organization.id, 
        description: Faker::Hipster.paragraph,
        zipcode_id: zipcode.id,
        phone: Faker::PhoneNumber.cell_phone
    )
    rating = Rating.create!(
        parent_id: parent.id,
        activity_id: activity.id,
        num_rating: Faker::Number.between(from: 1, to: 10),
        description: Faker::Lorem.paragraph(sentence_count: 4)
    )
end
