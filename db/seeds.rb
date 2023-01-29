# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Spina::User.create(name: 'mathilde', email: 'mathilde.ganancia@gmail.com', password: 'gaea', admin: true)
Spina::Account.create(name: 'whatever', theme: 'default')
Spina::NavigationItem.create(navigation_id: Spina::Navigation.first.id, page_id: 2)
