# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rubric.delete_all

Rubric.create(topic:"Local Government", tags:"government, local, big brother")

Rubric.create(topic:"State Government", tags:"government, state, big brother")

Rubric.create(topic:"Federal Government", tags:"government, federal, big brother")

Criterium.delete_all

t = Criterium.new(name: "Transparency", description: "### Transparency promotes accountability and provides information for citizens about what their Government is doing.")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Criterium.new(name: "Elections", description: "### Of more importance is achieving effective representation for all those that vote. The wishes and interests of voters need to be paramount and a way found for as many of their votes to be effective as possible. ")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Criterium.new(name: "Public Safety", description: "### The public safety issues a municipality, county, state, or federal jurisdiction might grapple with include narcotic use, trespassing, burglary, harassment, juvenile delinquency, unauthorized living, noise, littering, inappropriate social behavior, inebriation, and other quality of life issues. Generally organizations are involved in the prevention of and protection from events that could endanger the safety of the general public from significant danger, injury, or property damage, such as crimes or disasters (natural or human-made).")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Criterium.new(name: "Health and Social Services", description: "### Programs for health care, social services, public assistance and rehabilitation.")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save

t = Criterium.new(name: "City Budget", description: "### The government's proposed revenues and spending for a financial year that is often passed by the assembly, approved by the chief executive, and presented by the mayor")
t.rubric_id = Rubric.where(topic: "Local Government").ids[0]
t.save
