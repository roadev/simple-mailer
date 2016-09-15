# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.find_or_create_by name: 'Juan Roa', email: 'jdroa92@gmail.com', gender: 'm', event: 1, company: 'CreaDev', room: 303, age: 20
Person.find_or_create_by name: 'Ventas', email: 'ventas@alcancearoa.com', gender: 'm', event: 2, company: 'Alcance@Roa', room: 305, age: 21
Person.find_or_create_by name: 'MOOC Fernando', email: 'juanroa@informaticaeducativaucc.com', gender: 'm', event: 3, company: 'Semillero de Investigación', room: 305, age: 25
Person.find_or_create_by name: 'Sebastian Jiménez', email: 'soporte@gearsis.com', gender: 'm', event: 3, company: 'GearsIS SAS', room: 303, age: 24
