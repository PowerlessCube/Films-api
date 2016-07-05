# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Actor.delete_all
Film.delete_all
Director.delete_all
Casting.delete_all
Collaborate.delete_all

a1 = Actor.create({name: "Matt Damon"})
a2 = Actor.create({name: "Jeff Goldblum"})

d1 = Director.create({name: "Paul Greengrass"})
d2 = Director.create({name: "Rowland Emmerich"})

f1 = Film.create({name: "Jason Bourne", director_id: d1.id})
f2 = Film.create({name: "Independence Day 2", director_id: d2.id})

Casting.create({actor_id: a1.id, film_id: f1.id})
Casting.create({actor_id: a2.id, film_id: f2.id})

Collaborate.create({actor_id: a1.id, director_id: d1.id})
Collaborate.create({actor_id: a2.id, director_id: d2.id})
