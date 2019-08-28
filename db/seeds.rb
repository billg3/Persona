# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create( name: alex, email: alex@gmail.com, password:alexisgreat3 )

Collective.create(name:alexander, category:legends, about: conquered the known world )

Persona.create(user_id: 1, collective_id: 1, connection: mind, comment: awesome, coolness: ten)

