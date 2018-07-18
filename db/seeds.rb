# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Building.destroy_all
Floor.destroy_all
Keg.destroy_all
BeerLocation.destroy_all

sands = Building.create(street:'77 Sands St', city:'Brooklyn', state:'NY', zip:11210)
prospect = Building.create(street:'81 Prospect St', city:'Brooklyn', state:'NY', zip:11210)

twohearted = Keg.create(name:'Two Hearted Pale Ale', style: 'Pale Ale', calories:120, abv: 6.5)
mermaidpils = Keg.create(name:'Coney Island Mermaid Pilsner', style:'Pilsner', calories:120, abv: 5.6)
peroni = Keg.create(name:'Peroni', style:'Lager', calories:120, abv: 7)

f6sands =  Floor.create(number:6, building_id: sands.id)
f7sands =  Floor.create(number:7, building_id: sands.id)
f8sands =  Floor.create(number:8, building_id: sands.id)

f6prospect =  Floor.create(number:6, building_id: prospect.id)
f8prospect =  Floor.create(number:8, building_id: prospect.id)
f9prospect =  Floor.create(number:9, building_id: prospect.id)

f6sandsbl = BeerLocation.create(keg_id:twohearted.id, floor_id: f6sands.id)
f7sandsbl = BeerLocation.create(keg_id:peroni.id, floor_id: f7sands.id)
f8sandsbl = BeerLocation.create(keg_id:mermaidpils.id, floor_id: f8sands.id)

f6prospectbl = BeerLocation.create(keg_id:twohearted.id, floor_id: f6prospect.id)
f8prospectbl = BeerLocation.create(keg_id:peroni.id, floor_id: f8prospect.id)
f9prospectbl = BeerLocation.create(keg_id:mermaidpils.id, floor_id: f9prospect.id)