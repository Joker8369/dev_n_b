User.destroy_all

User.create(email: 'toto@gmail.com', password: 'tototo', password_confirmation: 'tototo', first_name: 'Clement', last_name: 'Malfroy')
User.create(email: 'tata@gmail.com', password: 'tatata', password_confirmation: 'tototo', first_name: 'Clement', last_name: 'Malfroy')

Developer.destroy_all
Developer.create!(first_name: "Clement", last_name: "Moreno", rating: 4.3, skills: 7, prog_langage: "CSS", work_zone: "Rhone", project_done: 63, price_day: 750, owner_id: User.last.id)
Developer.create!(first_name: "Jonathan", last_name: "Kerbrat", rating: 3.7, skills: 4, prog_langage: "Jquery", work_zone: "Rhone-Alpes Auvergne", project_done: 24, price_day: 340, owner_id: User.last.id)
Developer.create!(first_name: "Leo", last_name: "Genuit", rating: 2, skills: 1, prog_langage: "PHP", work_zone: "Roanne", project_done: 4, price_day: 100, owner_id: User.last.id)
Developer.create!(first_name: "Nicolas", last_name: "Feuerstein", rating: 3.9, skills: 3, prog_langage: "Python", work_zone: "Alsace", project_done: 32, price_day: 320, owner_id: User.last.id)
Developer.create!(first_name: "Michael", last_name: "Grosheny", rating: 4, skills: 5, prog_langage: "C", work_zone: "Rhone", project_done: 41, price_day: 520, owner_id: User.last.id)
Developer.create!(first_name: "chloe", last_name: "Nguyen", rating: 2.8, skills: 7, prog_langage: "VuJS", work_zone: "Paris", project_done: 278, price_day: 640, owner_id: User.last.id)
Developer.create!(first_name: "Nathan", last_name: "Bertier", rating: 4.9, skills: 1, prog_langage: "C++", work_zone: "World", project_done: 1360, price_day: 42, owner_id: User.last.id)
Developer.create!(first_name: "Anne-charlotte", last_name: "Morizot", rating: 4.6, skills: 3, prog_langage: "Java", work_zone: "France", project_done: 63, price_day: 429, owner_id: User.last.id)
Developer.create!(first_name: "Simon", last_name: "Granger", rating: 3.2, skills: 3, prog_langage: "GO", work_zone: "Var", project_done: 24, price_day: 240, owner_id: User.last.id)
