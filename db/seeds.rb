# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Job.destroy_all
job1 = Job.create(company: 'General Assembly', description: 'A cool place to work', location: 'Sydney', requirements: 'Web Development', remuneration: '50000', position: 'Junior Web Developer', contract: 'Full-Time' )
job2 = Job.create(company: 'Pied Piper', description: 'A video compression company', location: 'Silicon Valley', requirements: 'Javascript, React', remuneration: '75000', position: 'Javascript Developer', contract: 'Part-Time')
job3 = Job.create(company: 'Ansarada', description: 'If you love SQL, you will love us', location: 'The Rocks', requirements: 'Web Development', remuneration: '50000', position: 'Ruby on Rails Developer', contract: 'Casual')

User.destroy_all
daniel = User.create(email: 'daniel@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Daniel', last_name: 'Bennetts', address: 'Sydney')
don = User.create(email: 'don@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Don', last_name: 'Almond', address: 'Sydney')
josh = User.create(email: 'josh@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Josh', last_name: 'Panebianco', address: 'Sydney')
dale = User.create(email: 'dale@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Dale', last_name: 'Chapman', address: 'Sydney')

Application.destroy_all
app1 = Application.create(first_name: 'Daniel', last_name: 'Bennetts', email: 'daniel@ga.co', videoURL: 'https://example.com', comments: 'etc etc' )
app2 = Application.create(first_name: 'Dale', last_name: 'Chapman', email: 'dale@ga.co', videoURL: 'https://example.com', comments: 'etc etc' )
app3 = Application.create(first_name: 'Josh', last_name: 'Panebianco', email: 'josh@ga.co', videoURL: 'https://example.com', comments: 'etc etc' )

daniel.jobs << job1

daniel.applications << app1
