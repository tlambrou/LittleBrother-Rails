# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Criterium.delete_all

Category.delete_all

Rubric.delete_all

Rubric.create(topic:"Local Government", tags:"government, local, big brother")

Rubric.create(topic:"State Government", tags:"government, state, big brother")

Rubric.create(topic:"Federal Government", tags:"government, federal, big brother")



t = Category.new(name: "Transparency", description: "Transparency promotes accountability and provides information for citizens about what their Government is doing.")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Category.new(name: "Elections", description: "Of more importance is achieving effective representation for all those that vote. The wishes and interests of voters need to be paramount and a way found for as many of their votes to be effective as possible. ")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Category.new(name: "Public Safety", description: "The public safety issues a municipality, county, state, or federal jurisdiction might grapple with include narcotic use, trespassing, burglary, harassment, juvenile delinquency, unauthorized living, noise, littering, inappropriate social behavior, inebriation, and other quality of life issues. Generally organizations are involved in the prevention of and protection from events that could endanger the safety of the general public from significant danger, injury, or property damage, such as crimes or disasters (natural or human-made).")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Category.new(name: "Health and Social Services", description: "Programs for health care, social services, public assistance and rehabilitation.")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Category.new(name: "City Budget", description: "The government's proposed revenues and spending for a financial year that is often passed by the assembly, approved by the chief executive, and presented by the mayor")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Category.new(name: "Administration", description: "As the top appointed official in the city, the city manager is typically responsible for most if not all of the day-to-day administrative operations of the municipality, in addition to other expectations.")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Category.new(name: "Transportation", description: "Public transport modes include city buses, trolleybuses, trams (or light rail) and passenger trains, rapid transit (metro/subways/undergrounds etc) and ferries. Public transport between cities is dominated by airlines, coaches, and intercity rail. High-speed rail networks are being developed in many parts of the world.")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Category.new(name: "Waste Management", description: "Waste management is all the activities and actions required to manage waste from its inception to its final disposal.[1] This includes amongst other things, collection, transport, treatment and disposal of waste together with monitoring and regulation. It also encompasses the legal and regulatory framework that relates to waste management encompassing guidance on recycling etc.")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save



t = Criterium.new(name: "Accessible, Current, Clear, and Consistent", description: "Measures & Performance for Accessible, Current, Clear, and Consistent")
t.category_id = Category.where(name: "Transparency").ids[0]
