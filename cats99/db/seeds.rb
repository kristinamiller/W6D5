# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create!(birth_date: '2017/07/07', color: 'pink', name: 'Snickers', sex: 'F', description: '1111')
cat2 = Cat.create!(birth_date: '2013/05/07', color: 'orange', name: 'Butterfinger', sex: 'M', description: '2222')
cat3 = Cat.create!(birth_date: '2012/01/07', color: 'black', name: 'Twix', sex: 'M', description: '3333')