# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
PartyCandidate.create(
  name: 'Bernie Sanders',
  party_affiliation: 'Democrat',
  experience: 'U.S. Senator, Texas',
  background: 'Bernie Sanders first rose to elective office in 1981 and holds an elected position to this day. Sanders has served as an elected official for a total of 34 years and counting, which is 19 more than the average 2016 presidential candidate (15 years).',
  image: 'https://s.graphiq.com/sites/default/files/980/media/images/t2/Bernie_Sanders_1786280.jpg' 
)

PartyCandidate.create(
  name: 'Ted Cruz',
  party_affiliation: 'Republican',
  experience: 'U.S. Senator, Texas',
  background: 'Ted Cruz first rose to elective office in 2013 and holds an elected position to this day. Cruz has served as an elected official for a total of 2 years and counting, which is 13 less than the average 2016 presidential candidate (15 years).', 
  image: 'https://s2.graphiq.com/sites/default/files/980/media/images/t2/Ted_Cruz_1786303.jpg',
)
PartyCandidate.create(
  name: 'John Kasich',
  party_affiliation: 'Republican',
  experience: 'U.S. Senator, Texas',
  background: 'John Kasich first rose to elective office in 1979 and holds an elected position to this day. Kasich has served as an elected official for a total of 26 years and counting, which is 11 more than the average 2016 presidential candidate (15 years).',
  image: 'https://s3.graphiq.com/sites/default/files/980/media/images/t2/John_Kasich_1786289.jpg', 
)

PartyCandidate.create(
 name: 'Hillary Clinton',
 party_affiliation: 'Democrat',
 experience: 'Former Secretary of State',
 background: 'Hillary Clinton first rose to elective office in 2001 and stepped down from an elected position in 2009. Clinton has served as an elected official for a total of 8 years, which is 7 less than the average 2016 presidential candidate (15 years).', 
image: 'https://s.graphiq.com/sites/default/files/980/media/images/t2/Hillary_Clinton_1786283.jpg',
)