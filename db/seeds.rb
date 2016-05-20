# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bernie = PartyCandidate.create(
  name: 'Bernie Sanders',
  party_affiliation: 'Democrat',
  experience: 'U.S. Senator, Texas',
  background: 'Bernie Sanders first rose to elective office in 1981 and holds an elected position to this day. Sanders has served as an elected official for a total of 34 years and counting, which is 19 more than the average 2016 presidential candidate (15 years).',
  image: 'https://s.graphiq.com/sites/default/files/980/media/images/t2/Bernie_Sanders_1786280.jpg' 
  )

donald = PartyCandidate.create(
  name: 'Donald Trump',
  party_affiliation: 'Republican',
  experience: 'President, Trump Organization',
  background: 'Donald Trump has never held elective office.', 
  image: 'https://s3.graphiq.com/sites/default/files/980/media/images/t2/Donald_Trump_6522122.jpg',
  )
jill = PartyCandidate.create(
  name: 'Jill Stein',
  party_affiliation: 'Green Party',
  experience: 'Physician',
  background: 'Jill Stein has never held elective office.',
  image: 'https://s2.graphiq.com/sites/default/files/980/media/images/t2/Jill_Stein_1786255.jpg', 
  )

hillary = PartyCandidate.create(
 name: 'Hillary Clinton',
 party_affiliation: 'Democrat',
 experience: 'Former Secretary of State',
 background: 'Hillary Clinton first rose to elective office in 2001 and stepped down from an elected position in 2009. Clinton has served as an elected official for a total of 8 years, which is 7 less than the average 2016 presidential candidate (15 years).', 
 image: 'https://s.graphiq.com/sites/default/files/980/media/images/t2/Hillary_Clinton_1786283.jpg',
 )

gary = PartyCandidate.create(
 name: 'Gary Johnson',
 party_affiliation: 'Libertarian',
 experience: ' Former Governor of New Mexico',
 background: ' Gary Johnson first rose to elective office in 1995 and stepped down from an elected position in 2003. Johnson has served as an elected official for a total of 8 years, which is 7 less than the average 2016 presidential candidate (15 years).', 
 image: 'https://s.graphiq.com/sites/default/files/980/media/images/t2/Gary_Johnson_1786250.jpg',
 )

Question.create(
  question_id: "1", 
  text: "Enforce against wage discrimination based on gender"
  )
Question.create(
  question_id: "2", 
  text:  "ENDA: prohibit employment discrimination for gays"
  )
Question.create(
  question_id: "3", 
  text:  "NO on allowing school prayer during the War on Terror"
  )
Question.create(
  question_id: "4", 
  text: "Make tax deduction permanent for conservation easements"
  )
Answer.create(
  answer_id: "1", 
  text: "Strongly Favor"
  )
Answer.create(
  answer_id: "2", 
  text: "Favor"
  )
Answer.create(
  answer_id: "3", 
  text: "Oppose"
  )
Answer.create(
  answer_id: "4", 
  text: "Strongly Oppose"
  )

issue1 = Issue.create(
  name: "social",
  question: "Should a business be able to deny service to a customer if the request conflicts with the owner’s religious beliefs?"
  )

issue2 = Issue.create(
  name: "environmental",
  question: "Should the government increase environmental regulations to prevent global warming?"
  )

issue3 = Issue.create(
  name: "economic",
  question: "Should employers be required to pay men and women the same salary for the same job?"
  )

issue4 = Issue.create(
  name: "domestic policy",
  question: "Should there be more restrictions on the current process of purchasing a gun?"
  )

issue5 = Issue.create(
  name: "criminal",
  question: "Should convicted felons have the right to vote?"
  )

CandidateIssue.create(issue_id: issue1.id, candidate_id: bernie.id, value: 5)
CandidateIssue.create(issue_id: issue2.id, candidate_id: bernie.id, value: 5)
CandidateIssue.create(issue_id: issue3.id, candidate_id: bernie.id, value: 1)
CandidateIssue.create(issue_id: issue4.id, candidate_id: bernie.id, value: 1)
CandidateIssue.create(issue_id: issue5.id, candidate_id: bernie.id, value: 1)

CandidateIssue.create(issue_id: issue1.id, candidate_id: hillary.id, value: 4)
CandidateIssue.create(issue_id: issue2.id, candidate_id: hillary.id, value: 5)
CandidateIssue.create(issue_id: issue3.id, candidate_id: hillary.id, value: 2)
CandidateIssue.create(issue_id: issue4.id, candidate_id: hillary.id, value: 5)
CandidateIssue.create(issue_id: issue5.id, candidate_id: hillary.id, value: 4)

CandidateIssue.create(issue_id: issue1.id, candidate_id: donald.id, value: 1)
CandidateIssue.create(issue_id: issue2.id, candidate_id: donald.id, value: 1)
CandidateIssue.create(issue_id: issue3.id, candidate_id: donald.id, value: 2)
CandidateIssue.create(issue_id: issue4.id, candidate_id: donald.id, value: 5)
CandidateIssue.create(issue_id: issue5.id, candidate_id: donald.id, value: 5)

CandidateIssue.create(issue_id: issue1.id, candidate_id: jill.id, value: 5)
CandidateIssue.create(issue_id: issue2.id, candidate_id: jill.id, value: 1)
CandidateIssue.create(issue_id: issue3.id, candidate_id: jill.id, value: 1)
CandidateIssue.create(issue_id: issue4.id, candidate_id: jill.id, value: 1)
CandidateIssue.create(issue_id: issue5.id, candidate_id: jill.id, value: 2)

CandidateIssue.create(issue_id: issue1.id, candidate_id: gary.id, value: 2)
CandidateIssue.create(issue_id: issue2.id, candidate_id: gary.id, value: 4)
CandidateIssue.create(issue_id: issue3.id, candidate_id: gary.id, value: 2)
CandidateIssue.create(issue_id: issue4.id, candidate_id: gary.id, value: 4)
CandidateIssue.create(issue_id: issue5.id, candidate_id: gary.id, value: 3)

LocalCandidate.create(
  name: 'Kim Foxx',
  position: 'Cook County State Attorney',
  party_affiliation: 'Democrat',
  experience: 'Lawyer',
  background: 'Kim Foxx is an accomplished leader, prosecutor and advocate for children and families in Cook County. She is running to become Cook County State’s Attorney to continue that work, and to restore public faith in a criminal justice system that has failed so many families',
  image: 'http://www.nwherald.com/_internal/cimg!0/a93zgu9ru2jbum15c4a5rqh8ld63la7' 
  )

LocalCandidate.create(
  name: 'Christopher E. K. Pfannkuche',
  position: 'Cook County State Attorney',
  party_affiliation: 'Republican',
  experience: 'Lawyer',
  background: 'In Cook County, Christopher served 31 years as a Criminal Prosecutor with the Cook County State’s Attorney’s Office. He served as a Trial Supervisor in the Felony Review Unit, reviewing Murder cases, police shootings, press cases, search warrants, and a variety of other felony cases, while also overseeing a team of prosecutors under him. He spent 20 years in the Felony Trial Division, litigating over 2000 felony cases, and handling over 10,000 felony cases. ',
  image: 'http://www.votechristopher.com/wp-content/uploads/2015/10/20150926_1020561.jpg' 
  )

LocalCandidate.create(
  name: 'Tammy Duckworth',
  position: 'U.S. Senate - IL ',
  party_affiliation: 'Democrat',
  experience: 'House of Representatives',
  background: 'Tammy Duckworth is running to represent Illinois in the United States Senate. Following her career as a helicopter pilot in the U.S. Army, Tammy worked as an advocate for Veterans at both the state and federal level. Tammy was elected to the House of Representatives in 2012, where she has been an active voice for Illinois families.',
  image: 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Tammy_Duckworth,_official_portrait,_113th_Congress.jpg' 
  )

LocalCandidate.create(
  name: 'Mark Kirk',
  position: 'U.S. Senate - IL ',
  party_affiliation: 'Republican',
  experience: 'Senator (IL)',
  background: 'Mark Kirk represents Illinois in the United States Senate as an independent voice for families from every corner of the greatest state in the nation. With a proven record as a bridge-builder, Mark is a fiscal conservative, social moderate and defense hawk on our national security.',
  image: 'https://upload.wikimedia.org/wikipedia/commons/f/fb/Mark_Steven_Kirk,_official_photo_portrait_color.jpg' 
  )

LocalCandidate.create(
  name: 'Bobby Rush',
  position: 'U.S. Representative - 1st District',
  party_affiliation: 'Democrat',
  experience: 'House of Representatives',
  background: 'Bobby Lee Rush (born November 23, 1946) is the U.S. Representative for Illinois 1st congressional district, serving in Congress for more than two decades; he was first elected in 1992 and took office in 1993. He has since won consecutive re-election.',
  image: 'https://rush.house.gov/sites/rush.house.gov/files/BLR%20Portrait%20(Hi%20Res).jpg' 
  )

LocalCandidate.create(
  name: 'August Deuser',
  position: 'U.S. Representative - 2nd District ',
  party_affiliation: 'Republican',
  experience: 'Retired Teacher',
  background: 'August (O’Neill) Deuser was born and raised on the south side of Chicago. August’s grandfather, Hugh O’Neill, and father, August Deuser, were Chicago Police officers. Mr. Deuser was a police officer for three years before going back to school and becoming a teacher.',
  image: 'http://dev.deuser.us/wp-content/uploads/2015/01/deuser-216x300.jpeg' 
  )

LocalCandidate.create(
  name: 'John Morrow',
  position: 'U.S. Representative - 2nd District',
  party_affiliation: 'Republican',
  experience: 'Businessman',
  background: 'John Morrow is a very successful businessman with a background in imports, retail, and financial sales markets. Hes the epitome of a people person. John relates to the problems and finds solutions.',
  image: 'https://ballotpedia.org/wiki/images/thumb/b/b2/John_Morrow.jpg/200px-John_Morrow.jpg' 
  )

LocalCandidate.create(
  name: 'Robin Kelly',
  position: 'U.S. Representative - 2nd District',
  party_affiliation: 'Democrat',
  experience: 'Congress',
  background: 'Congresswoman Robin Kelly is honored to represent the citizens of Illinois’ 2nd Congressional District.  Since her election in 2013, she has worked to expand economic opportunity and promote public safety, sponsoring numerous bills to generate job growth and end gun violence.',
  image: 'http://www.gunssavelife.com/wp-content/uploads/2014/07/Bloombergsgirl.jpg' 
  )
