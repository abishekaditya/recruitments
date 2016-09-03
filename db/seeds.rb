# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.create(content: 'Consider yourself as a party (nightlife) organiser. You\'ve to organise an event there You\'ve a budget of 50,000 out of which 38,000 is venue charges. 
Draw out a business model with a reasonable profits. You need to apply for permission (with bribes/favours), consider security, manage crowd, promote your event in an organic way, make sure your event doesn\'t violate any govt rules/regulations.')
Question.create(content: 'What do you prefer as a better mode of publicity (through Facebook). Spamming or sponsored post? You should consider ways to increase organic page following as well.
Give eloquent reasons with your preferred mode of publicity. (min word limit: 100 words)')
Question.create(content: 'As you\'re applying for a management profile, do you believe you need to learn or be familiar with technical skills (not strictly to computer science discipline) ? Eloquent reasons shall be preferred.')
Question.create(content: 'Suggest better marketing channels for publicising events in VIT? (Note: classroom announcements are halted by Vit and no run-off-the-mill methods like Facebook sharing)')
Question.create(content: 'Conducting frequent meetings is productive.State why you\'re with the motion or against it.')

Mcq.create(content: 'Who do you think should lead a team?', a: 'You', b: 'A member with extensive knowledge of the topic', c: 'A member with extensive experience over the topic', d: 'No leader; non-hierarchical structure of team
', correct: 'c')
Mcq.create(content: 'What resolution techniques would you follow in case of difference in perspectives amongst your fellow team members?', a: 'Prefer the best solution', b: 'Prefer the easiest solution', c: 'Find common areas of agreement and then satisfy the purpose', d: 'Find purpose and then evaluate the differences in their approaches', correct: 'c')
Mcq.create(content: 'How do you interact with an angry team member?', a: 'Hear him/her first, take decesions later', b: 'Tell him/her about the consequences of their actions first', c: 'Tell him/her about the ideal solutions and why their anger is not justified', d: 'Ask him/her to contact you later', correct: 'c')
Mcq.create(content: 'You are given an impromptu task, but you already have your share of work. What would you do?', a: 'Perform the task hastily; the best way you can at the moment', b: 'Request for more time', c: 'Perform; after a quick analysis', d: 'Deny the opportunity
', correct: 'b')
