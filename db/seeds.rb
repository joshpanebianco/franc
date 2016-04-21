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
job4 = Job.create(company: 'Super Star', description: 'If you want to teach dance, you want to join the Super Star team!', location: 'Erskineville', requirements: 'Dance Experience', remuneration: '40000', position: 'Dance Instructor', contract: 'Full-Time')
job5 = Job.create(company: 'Hungry Jacks', description: 'Come and join our funtastic team!', location: 'Sydney', requirements: 'Willing team member', remuneration: '30000', position: 'Fry Chef', contract: 'Casual')
job6 = Job.create(company: 'Cotton On', description: 'Clothes and cool environment!', location: 'Newtown', requirements: '2 years prior sales industry experience', remuneration: '37000', position: 'Sales Rep', contract: 'Full-Time')
job7 = Job.create(company: 'Santas Helpers', description: 'Come joing our dedicated team and embark on a journey which will take you to new heights in the workplace.', location: 'Mona Vale', requirements: '2 years prior service industry experience', remuneration: '40000', position: 'Chimney Sweep', contract: 'Casual')
job8 = Job.create(company: 'U Bog Em, We Unclog Em', description: 'Come joing our team.', location: 'Willoughby', requirements: 'Completed Plumbing apprenticeship', remuneration: '55000', position: 'Plumber', contract: 'Full-Time')
job9 = Job.create(company: 'Shifty', description: 'A dedicated workplace where we treasure customers goods.', location: 'Albany Creek', requirements: 'One year prior removalist experience', remuneration: '40000', position: 'Removalist', contract: 'Part-Time')
job10 = Job.create(company: 'DZN DSN', description: 'Are you a designer with a creative passion for things in dozens? If this sounds like you apply today!', location: 'Surry Hills', requirements: '4 years prior industry experience', remuneration: '48000', position: 'Mid Industrial Designer', contract: 'Full-Time')
job11 = Job.create(company: 'Sailon', description: 'A fun team of heair enthusiasts operating down by the seaside at Manly looking for a new member to join!', location: 'Manly', requirements: '2 Years Industry experience', remuneration: '50000', position: 'Salon Hairdresser', contract: 'Full-Time')
job12 = Job.create(company: 'Angle Tech', description: 'Seeking a dedicated CEO with previous experience to drive a thriving company towards success', location: 'Sydney CBD', requirements: 'Available upon application', remuneration: '200000', position: 'Company CEO', contract: 'Casual')
job13 = Job.create(company: 'Catfe', description: 'If you have previously worked in hospitality and have a passion for cats then you want this job at Petershams very own cat cafe!', location: 'Petersham', requirements: '2 years barista experience', remuneration: '35000', position: 'Barista', contract: 'Casual')
job14 = Job.create(company: 'Zzap', description: 'Seeking a new member to join the team', location: 'Port Macquarie', requirements: 'Loathing of insects', remuneration: '65000', position: 'Insect Exterminator', contract: 'Full-Time')
job15 = Job.create(company: 'Snag Sausage', description: 'Our new locations is seeking team members now!', location: 'Neutral Bay', requirements: '1 years hospitality experience', remuneration: '45000', position: 'Manager', contract: 'Full-Time')
job16 = Job.create(company: 'Red Oblong Blocks', description: 'We make bricks', location: 'Eastwood', requirements: 'Two years Bricklaying experieence', remuneration: '70000', position: 'Brick Manager', contract: 'Full-Time')
job17 = Job.create(company: 'Chode Force', description: 'We are here to help', location: 'North Bridge', requirements: 'Tfweerieence', remuneration: '85000', position: 'Kill Me', contract: 'Full-Time')
job18 = Job.create(company: 'Chode Force', description: 'We are here to help', location: 'North Bridge', requirements: 'Tfweerieence', remuneration: '85000', position: 'Kill Me', contract: 'Full-Time')

User.destroy_all
daniel = User.create(email: 'daniel@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Daniel', last_name: 'Bennetts', address: 'Sydney')
don = User.create(email: 'don@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Don', last_name: 'Almond', address: 'Sydney')
josh = User.create(email: 'josh@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Josh', last_name: 'Panebianco', address: 'Sydney')
dale = User.create(email: 'dale@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Dale', last_name: 'Chapman', address: 'Sydney')
saladman = User.create(email: 'dale@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Saladman', last_name: 'Pesto', address: 'Sydney')
luinda = User.create(email: 'luinda@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Luinda', last_name: 'Lu', address: 'Sydney')
crumpet = User.create(email: 'crumpet@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Crumpet', last_name: 'With-Honey', address: 'Sydney')
sally = User.create(email: 'sally@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Sally', last_name: 'Omally', address: 'Sydney')
sarah = User.create(email: 'sarah@ga.co', password: 'chicken', password_confirmation: 'chicken', first_name: 'Sarah', last_name: 'Line', address: 'Sydney')

Application.destroy_all
app1 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app2 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app3 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app4 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app5 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app6 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app7 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app8 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app9 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app10 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )
app11 = Application.create(videoURL: 'https://example.com', comments: 'etc etc' )


daniel.jobs << job1
daniel.applications << app1

crumpet.jobs << job2 << job13
crumpet.applications << app5 << app7

sarah.jobs << job1 << job8
sarah.applications << app10 << app3
