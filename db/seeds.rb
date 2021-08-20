User.destroy_all
Developer.destroy_all
Review.destroy_all


clem = User.create(email: 'toto@gmail.com', password: 'tototo', password_confirmation: 'tototo', first_name: 'Clement', last_name: 'Malfroy')
sam = User.create(email: 'tata@gmail.com', password: 'tatata', password_confirmation: 'tatata', first_name: 'Samuel', last_name: 'Boulery')

clem2 = Developer.create!(first_name: "Clement", last_name: "Moreno", rating: 4.3, skills: 7, prog_langage: "CSS", work_zone: "Brest", project_done: 63, price_day: 750, owner: clem)
jon = Developer.create!(first_name: "Jonathan", last_name: "Kerbrat", rating: 3.7, skills: 4, prog_langage: "Jquery", work_zone: "La Rochelle", project_done: 24, price_day: 340, owner: clem)
leo = Developer.create!(first_name: "Leo", last_name: "Genuit", rating: 2, skills: 1, prog_langage: "PHP", work_zone: "Roanne", project_done: 4, price_day: 100, owner: clem)
nico = Developer.create!(first_name: "Nicolas", last_name: "Feuerstein", rating: 3.9, skills: 3, prog_langage: "Python", work_zone: "Strasbourg", project_done: 32, price_day: 320, owner: clem)
micha = Developer.create!(first_name: "Michael", last_name: "Grosheny", rating: 4, skills: 5, prog_langage: "C", work_zone: "Lyon", project_done: 41, price_day: 520, owner: clem)
chloe = Developer.create!(first_name: "chloe", last_name: "Nguyen", rating: 2.8, skills: 7, prog_langage: "VuJS", work_zone: "Paris", project_done: 278, price_day: 640, owner: sam)
nathan = Developer.create!(first_name: "Nathan", last_name: "Bertier", rating: 4.9, skills: 1, prog_langage: "C++", work_zone: "Montcuq", project_done: 1360, price_day: 42, owner: sam)
anne = Developer.create!(first_name: "Anne-charlotte", last_name: "Morizot", rating: 4.6, skills: 3, prog_langage: "Java", work_zone: "Bordeaux", project_done: 63, price_day: 429, owner: sam)
simon = Developer.create!(first_name: "Simon", last_name: "Granger", rating: 3.2, skills: 2, prog_langage: "GO", work_zone: "Toulon", project_done: 24, price_day: 240, owner: sam)
jean = Developer.create!(first_name: "Jean-Romain", last_name: "Krupa", rating: 4.8, skills: 14, prog_langage: "Ruby On Rails", work_zone: "Marseille", project_done: 6, price_day: 1243, owner: sam)

Review.create!(content: 'lorem ipsum', developer: clem2, user: clem)
Review.create!(content: 'lorem ipsum', developer: clem2, user: clem)
Review.create!(content: 'lorem ipsum', developer: jon, user: clem)
Review.create!(content: 'lorem ipsum', developer: jon, user: clem)
Review.create!(content: 'lorem ipsum', developer: leo, user: clem)
Review.create!(content: 'lorem ipsum', developer: leo, user: clem)
Review.create!(content: 'lorem ipsum', developer: nico, user: clem)
Review.create!(content: 'lorem ipsum', developer: nico, user: clem)
Review.create!(content: 'lorem ipsum', developer: micha, user: clem)
Review.create!(content: 'lorem ipsum', developer: micha, user: clem)
Review.create!(content: 'lorem ipsum', developer: chloe, user: sam)
Review.create!(content: 'lorem ipsum', developer: chloe, user: sam)
Review.create!(content: 'lorem ipsum', developer: nathan, user: sam)
Review.create!(content: 'lorem ipsum', developer: nathan, user: sam)
Review.create!(content: 'lorem ipsum', developer: anne, user: sam)
Review.create!(content: 'lorem ipsum', developer: anne, user: sam)
Review.create!(content: 'lorem ipsum', developer: simon, user: sam)
Review.create!(content: 'lorem ipsum', developer: simon, user: sam)
Review.create!(content: 'lorem ipsum', developer: jean, user: sam)
Review.create!(content: 'lorem ipsum', developer: jean, user: sam)
