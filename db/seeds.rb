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
Organization.destroy_all
Activity.destroy_all
Rating.destroy_all
Endorsement.destroy_all
Teacher.destroy_all


zipcode1 = Zipcode.create(zip_num: "17166")
zipcode2 = Zipcode.create(zip_num: "90210")
zipcode3 = Zipcode.create(zip_num: "09871")
zipcode4 = Zipcode.create(zip_num: "41859")
zipcode5 = Zipcode.create(zip_num: "33042")
zipcode6 = Zipcode.create(zip_num: "11210")

parent1 = Parent.create(
    username: "@motorcyclebadboy", 
    password: "joslynlivesinboston", 
    email: "jjenkins@gmail.com", 
    zipcode: zipcode1
)

parent2 = Parent.create(
    username: "@itsmichifang", 
    password: "michellelivesinla", 
    email: "michifang@hotmail.com", 
    zipcode: zipcode2
)

parent3 = Parent.create(
    username: "@mina.zhou", 
    password: "minalivesintoronto", 
    email: "minazhou@gmail.com", 
    zipcode: zipcode3
)

parent4 = Parent.create(
    username: "@tiffliang", 
    password: "tifflivesinsf", 
    email: "tiffanyliang@gmail.com", 
    zipcode: zipcode4
)

parent5 = Parent.create(
    username: "@naomielegant", 
    password: "naomilivesinhk", 
    email: "naomicelegant@gmail.com", 
    zipcode: zipcode5
)

parent6 = Parent.create(
    username: "@xanthecoffman", 
    password: "xanthevisitsla", 
    email: "xanthecoffman@gmail.com", 
    zipcode: zipcode2
)

parent7 = Parent.create(
    username: "@sachibajaj", 
    password: "sachilivesinsf", 
    email: "sachibajaj@gmail.com", 
    zipcode: zipcode6
)

organization1 = Organization.create(
    name: "Flatbush YMCA", 
    street: "1401 Flatbush Avenue",  
    city: "Brooklyn", 
    state: "NY", 
    zipcode: zipcode6
)

organization2 = Organization.create(
    name: "Fresh Air Fund", 
    street: "633 Third Avenue", 
    city: "New York", 
    state: "NY", 
    zipcode: zipcode2
)

organization3 = Organization.create(
    name: "Cityparks Play", 
    street: "830 Fifth Avenue", 
    city: "New York", 
    state: "NY", 
    zipcode: zipcode2
)

organization4 = Organization.create(
    name: "NY Road Runners", 
    street: "320 W 57th St", 
    city: "New York", 
    state: "NY", 
    zipcode: zipcode3
)

organization5 = Organization.create(
    name: "Queens Gymnastics of Forest Hills", 
    street: "106-06 Queens Boulevard", 
    city: "Forest Hills", 
    state: "NY", 
    zipcode: zipcode4
)

organization6 = Organization.create(
    name: "New York Public Library", 
    street: "224 East 125th Street", 
    city: "New York", 
    state: "NY", 
    zipcode: zipcode5
)

activity1 = Activity.create(
    name: "Free Swimming Lessons at the Y", 
    organization: organization1, 
    description: "The Y has swim classes for infants, kids, teenagers, and adults on weekdays, evenings, and weekends, all year long. Find a class that’s right for you.",
    zipcode: zipcode6,
    phone: Faker::PhoneNumber.cell_phone)


activity2 = Activity.create(
    name: "Daycare Programs", 
    organization: organization1, 
    description: "Infant and daycare, preschool, and Universal Pre-K are available at select YMCA branches. Contact a branch to learn more about child care, preschool, and UPK programs near you.",
    zipcode: zipcode6,
    phone: Faker::PhoneNumber.cell_phone)


activity3 = Activity.create(
    name: "After School Tutoring", 
    organization: organization6, 
    description: "The library is more than just a quiet study space. Here, students can also receive homework help. In Enrichment Zones, students can receive individualized tutoring on homework assignments as well as Common Core reading and math skills. Kids can also use educational computer programs for those subjects and even take part in engaging activities for science, math and writing enrichment. The Enrichment Zones program is open to kids in grades first through eighth. Students come two to four days per week on Mondays through Thursdays for three hours each day.",
    zipcode: zipcode5,
    phone: Faker::PhoneNumber.cell_phone)


activity4 = Activity.create(
    name: "Free Rhythmic Gymnastics Class", 
    organization: organization5, 
    description: "Queens Gymnastics of Forest Hills is inviting girls into the world of rhythmic gymnastics – the most beautiful, graceful, and expressive sport! Rhythmic gymnastics, complex strengths exercises are combined with apparatus handling and various forms of dance, developing rhythm and musicality. As well as Queens Gymnastics teaches the girls to learn about life skills such as working hard, setting and achieving goals, willpower, strengths of character, time management, and respect for coaches and teammates.",
    zipcode: zipcode4,
    phone: "718-813-1700"
)


activity5 = Activity.create(
    name: "Rising New York Road Runners", 
    organization: organization4, 
    description: "Want to keep your kids active or introduce them to the sport of running this spring and summer? Sign up for a Rising New York Road Runners youth event today! Rising New York Road Runners offers 100% free events that mix running with fun fitness games and activities that are perfect for ages 2 to 18 and all ability levels. All participants get a New Balance premium, like a t-shirt or hat, and a ribbon or medal for finishing.",
    zipcode: zipcode3,
    phone: "855-569-6977"
)


activity6 = Activity.create(
    name: "The Fresh Air Fund Summer Camping Program", 
    organization: organization2, 
    description: "Free summer camp experiences to girls ages eight to 12 and boys ages eight to 15. Each year, thousands of children experience outdoor summer adventures through visits with volunteer host families and at The Fund’s sleepaway camps in upstate, NY. Fresh Air children also participate in academic enrichment and leadership programs throughout the school year.",
    zipcode: zipcode2,
    phone: "1-800-367-0003"
)

rating1 = Rating.create(
    parent: parent1,
    activity: activity1,
    num_rating: 9,
    description: "Our kids loved it!"
)

rating2 = Rating.create(
    parent: parent2,
    activity: activity2,
    num_rating: 10,
    description: "Sophie had a great experience"
)

rating3 = Rating.create(
    parent: parent3,
    activity: activity3,
    num_rating: 4,
    description: "Poor quality, we did not enjoy it"
)

rating4 = Rating.create(
    parent: parent4,
    activity: activity4,
    num_rating: 10,
    description: "Leon had a great time"
)

rating5 = Rating.create(
    parent: parent2,
    activity: activity4,
    num_rating: 6,
    description: "We were not incredibly happy with the quality of instruction, will try another time slot"
)

rating6 = Rating.create(
    parent: parent6,
    activity: activity5,
    num_rating: 10,
    description: "Coming back here again!"
)

teacher1 = Teacher.create(
    username: "@ms_alyssamilano",
    password: "schoolrocks!",
    email: "alyssa.milano@school1.edu",
    zipcode: zipcode1
)

teacher2 = Teacher.create(
    username: "@mr_jerry_112",
    password: "ilovemath!",
    email: "jerry112@school2.edu",
    zipcode: zipcode2
)

teacher3 = Teacher.create(
    username: "@natasha_lynn",
    password: "ilovehistory!",
    email: "nlynn@school3.edu",
    zipcode: zipcode3
)

teacher4 = Teacher.create(
    username: "@nancy_o_brien4",
    password: "ilovepresidentcarter!",
    email: "nobrien@taboracademy.edu",
    zipcode: zipcode4
)

teacher5 = Teacher.create(
    username: "@joseph_the_teacher",
    password: "iloveteaching!",
    email: "joseph@school.edu",
    zipcode: zipcode5
)

teacher6 = Teacher.create(
    username: "@tim_loves_teaching7",
    password: "teacherteacher!",
    email: "tim@school.edu",
    zipcode: zipcode6
)

endorsement1 = Endorsement.create(
    activity: activity1,
    teacher: teacher1,
    list_category: "Sports"
)

endorsement2 = Endorsement.create(
    activity: activity2,
    teacher: teacher2,
    list_category: "Daycare"
)

endorsement3 = Endorsement.create(
    activity: activity3,
    teacher: teacher3,
    list_category: "Tutoring"
)

endorsement4 = Endorsement.create(
    activity: activity4,
    teacher: teacher1,
    list_category: "Sports"
)

endorsement5 = Endorsement.create(
    activity: activity5,
    teacher: teacher4,
    list_category: "Sports"
)

endorsement6 = Endorsement.create(
    activity: activity6,
    teacher: teacher5,
    list_category: "Summer Camp"
)

# 50.times do
#     zipcode = Zipcode.create(zipcode_num: Faker::Address.zip_code)
#     parent = Parent.create!(
#         username: Faker::Name.unique.first_name, 
#         password: Faker::GreekPhilosophers.name, 
#         email: Faker::Internet.unique.email, 
#         zipcode_id: zipcode.id)
#     organization = Organization.create!(
#         name: Faker::Company.name, 
#         street: Faker::Address.street_address, 
#         city: Faker::Address.city, 
#         state: Faker::Address.state, 
#         zipcode_id: zipcode.id)
#     activity = Activity.create!(
#         name: "Name of the Afterschool Activity Goes Here", 
#         organization_id: organization.id, 
#         description: Faker::Hipster.paragraph,
#         zipcode_id: zipcode.id,
#         phone: Faker::PhoneNumber.cell_phone)
#     rating = Rating.create!(
#         parent_id: parent.id,
#         activity_id: activity.id,
#         num_rating: Faker::Number.between(from: 1, to: 10),
#         description: Faker::Lorem.paragraph(sentence_count: 4))
# end
