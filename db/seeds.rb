# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#DATA aka THE GOATS

User.create( name: "alex", email: "alex@gmail.com", password:"alexisgreat3" )

Collective.create(name:"Aristotle", category:"legends", about: "the father of philosphy")
Collective.create(name:"Alexander the great", category:"legends", about: "conquered the known world")
Collective.create(name:"Alfred the great ", category:"legends", about: "united english kingdom")
Collective.create(name:"Ashoka the Great", category:"legends", about: "lead vedic civilization ")
Collective.create(name:"Jesus ", category:"legends", about: "religion")
Collective.create(name:"Muhhammad", category:"legends", about: "religion")
Collective.create(name:"Abraham", category:"legends", about: "religion")
Collective.create(name:"Einstein", category:"legends", about: "e=mc2 mother$@%&*!")
Collective.create(name:"Newton", category:"legends", about: "apples all the way down")
Collective.create(name:"DaVinci", category:"legends", about: "ingenious")
Collective.create(name:"dads", category:"legends", about: "awesome")
Collective.create(name:"moms", category:"legends", about: "excellent")
Collective.create(name:"Charles Babbage", category:"legends", about: "the first programmer")
Collective.create(name:"Margaret Hamilton", category:"legends", about: "leader for the appolo mission")
Collective.create(name:"Grace Hopper", category:"legends", about: "coolio")
Collective.create(name:"Ada lovlace ", category:"legends", about: "ran those numbers")
Collective.create(name:"Winston Churchhill", category:"legends", about: "badass")
Collective.create(name:"William Shakespeare", category:"legends", about: "rhetoric on a whole other level")
Collective.create(name:"bill gates", category:"legends", about: "micro'd the soft")
Collective.create(name:"steve jobs", category:"legends", about: "conducted the orchestra")
Collective.create(name:"jeff bezos", category:"legends", about: "space boiiii")
Collective.create(name:"george washington", category:"legends", about: "legend")
Collective.create(name:"Abraham lincoln", category:"legends", about: "legit brown prez")
Collective.create(name:"John F Kennedy", category:"legends", about: "died for good of all")
Collective.create(name:"Justin Trudeau", category:"legends", about: "proof the world isn't completely crazy")
Collective.create(name:"Cleopatra", category:"legends", about: "hell yeah")
Collective.create(name:"Ceaser", category:"legends", about: "because it;s okay to be dicator for life in rome")
Collective.create(name:"Michael Bloomberg", category:"legends", about: "billionare, philanthropist, enviromentalist")



Persona.create(user_id: 1, collective_id: 1, connection: "mind", comment: "awesome", stars: "ten")

  
  