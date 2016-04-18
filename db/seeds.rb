# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Job.destroy_all
job1 = Job.create(title: 'General Assembly', description: 'A cool place to work', location: 'Sydney', requirements: 'Web Development', remuneration: '$50,000')
job2 = Job.create(title: 'Pied Piper', description: 'A video compression company', location: 'Silicon Valley', requirements: 'Javascript, React', remuneration: '$75,000')
job3 = Job.create(title: 'Ansarada', description: 'If you love SQL, you will love us', location: 'The Rocks', requirements: 'Web Development', remuneration: '$50,000')

User.destroy_all
daniel = User.create(email: 'daniel@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Daniel', last_name: 'Bennetts', address: 'Sydney')
don = User.create(email: 'don@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Don', last_name: 'Almond', address: 'Sydney')
josh = User.create(email: 'josh@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Josh', last_name: 'Panebianco', address: 'Sydney')
dale = User.create(email: 'dale@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Dale', last_name: 'Chapman', address: 'Sydney')

daniel.jobs << job1 << job2
