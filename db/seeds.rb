# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.find_or_create_by name: 'Juan Roa', email: 'jdroa92@gmail.com', gender: 'm', rol: 'admin'
Person.find_or_create_by name: 'Diana Carolina', email: 'dianacaro3552@gmail.com', gender: 'f', rol: 'admin'
Person.find_or_create_by name: 'Johan Tique', email: 'johan.tique@gmail.com', gender: 'm', rol: 'admin'
Person.find_or_create_by name: 'Geraldine Caicedo', email: 'geraldine.caicedo.h@gmail.com', gender: 'f', rol: 'admin'
