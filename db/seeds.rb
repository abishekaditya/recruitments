# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.create(content: 'Do you have any experience in managing any project/team/event before? If yes, what role did you play in managing it?
.If no, what kind of project/event would you like to manage?
')
Question.create(content: 'What leadership qualities do you possess? Contrast your qualities with that of your idol.
')
Question.create(content: 'If your subordinate is given an urgent work but he/she has not completed it on time, how would you deal with the situation and what actions would you take against him/her?
')
Question.create(content: 'Team work is considered as the building block of any organization. What techniques would you use to become a better team member and a better team leader in future?
')
Question.create(content: 'It is not easy to manage disputes in a team. State the methods that might help in solving these disputes. Please give your response considering yourself as a team member.')
Question.create(content: 'Respond to the previous question considering yourself to be the team leader.')
Mcq.create(content: 'Who do you think should lead a team?', a: 'You', b: 'A member with extensive knowledge of the topic', c: 'A member with extensive experience over the topic', d: 'No leader; non-hierarchical structure of team
', correct: 'c')
Mcq.create(content: 'What resolution techniques would you follow in case of difference in perspectives amongst your fellow team members?', a: 'Prefer the best solution', b: 'Prefer the easiest solution', c: 'Find common areas of agreement and then satisfy the purpose', d: 'Find purpose and then evaluate the differences in their approaches', correct: 'c')
Mcq.create(content: 'How do you interact with an angry team member?', a: 'Hear him/her first, take decesions later', b: 'Tell him/her about the consequences of their actions first', c: 'Tell him/her about the ideal solutions and why their anger is not justified', d: 'Ask him/her to contact you later', correct: 'c')
Mcq.create(content: 'You are given an impromptu task, but you already have your share of work. What would you do?', a: 'Perform the task hastily; the best way you can at the moment', b: 'Request for more time', c: 'Perform; after a quick analysis', d: 'Deny the opportunity
', correct: 'b')
