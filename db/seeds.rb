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

CandidateIssue.create(issue_id: issue1.id, candidate_id: bernie.id, value: 2)
CandidateIssue.create(issue_id: issue2.id, candidate_id: bernie.id, value: 1)
CandidateIssue.create(issue_id: issue3.id, candidate_id: bernie.id, value: 3)
CandidateIssue.create(issue_id: issue4.id, candidate_id: bernie.id, value: 4)
CandidateIssue.create(issue_id: issue5.id, candidate_id: bernie.id, value: 4)

CandidateIssue.create(issue_id: issue1.id, candidate_id: hillary.id, value: 1)
CandidateIssue.create(issue_id: issue2.id, candidate_id: hillary.id, value: 5)
CandidateIssue.create(issue_id: issue3.id, candidate_id: hillary.id, value: 3)
CandidateIssue.create(issue_id: issue4.id, candidate_id: hillary.id, value: 2)
CandidateIssue.create(issue_id: issue5.id, candidate_id: hillary.id, value: 2)

CandidateIssue.create(issue_id: issue1.id, candidate_id: donald.id, value: 2)
CandidateIssue.create(issue_id: issue2.id, candidate_id: donald.id, value: 4)
CandidateIssue.create(issue_id: issue3.id, candidate_id: donald.id, value: 4)
CandidateIssue.create(issue_id: issue4.id, candidate_id: donald.id, value: 1)
CandidateIssue.create(issue_id: issue5.id, candidate_id: donald.id, value: 3)

CandidateIssue.create(issue_id: issue1.id, candidate_id: jill.id, value: 5)
CandidateIssue.create(issue_id: issue2.id, candidate_id: jill.id, value: 1)
CandidateIssue.create(issue_id: issue3.id, candidate_id: jill.id, value: 3)
CandidateIssue.create(issue_id: issue4.id, candidate_id: jill.id, value: 3)
CandidateIssue.create(issue_id: issue5.id, candidate_id: jill.id, value: 2)

CandidateIssue.create(issue_id: issue1.id, candidate_id: gary.id, value: 2)
CandidateIssue.create(issue_id: issue2.id, candidate_id: gary.id, value: 2)
CandidateIssue.create(issue_id: issue3.id, candidate_id: gary.id, value: 2)
CandidateIssue.create(issue_id: issue4.id, candidate_id: gary.id, value: 1)
CandidateIssue.create(issue_id: issue5.id, candidate_id: gary.id, value: 1)



