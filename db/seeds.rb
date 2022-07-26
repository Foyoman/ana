# Users #

User.destroy_all
u1 = User.create :username => 'Foyoman', :password => 'chicken', :admin => true
u2 = User.create :username => 'egg', :password => 'chicken'
u3 = User.create :username => 'hotdogs', :password => 'chicken'
u4 = User.create :username => 'drumstick', :password => 'chicken'
u5 = User.create :username => 'kfc', :password => 'chicken'
u6 = User.create :username => 'donut', :password => 'chicken'
u7 = User.create :username => 'rooster', :password => 'chicken'
u8 = User.create :username => 'nugget', :password => 'chicken'
u9 = User.create :username => 'chicomarx', :password => 'chicken'
u10 = User.create :username => 'karlmarx', :password => 'chicken'
puts "#{ User.count } users"

# End users #

# Tags #

Tag.destroy_all

t1 = Tag.create :name => 'family'
t2 = Tag.create :name => 'relationship'
t3 = Tag.create :name => 'academia'
t4 = Tag.create :name => 'spirituality'
t5 = Tag.create :name => 'body'
t6 = Tag.create :name => 'pets'
t7 = Tag.create :name => 'anxiety'
t8 = Tag.create :name => 'depression'
t9 = Tag.create :name => 'phobias'
t10 = Tag.create :name => 'childhood'
t11 = Tag.create :name => 'funny'
t12 = Tag.create :name => 'life lessons'
t13 = Tag.create :name => 'health'
t14 = Tag.create :name => 'work'
t15 = Tag.create :name => 'friends'
t16 = Tag.create :name => 'social life'
t17 = Tag.create :name => 'technology'
t18 = Tag.create :name => 'procrastination'
t19 = Tag.create :name => 'school'
t20 = Tag.create :name => 'emotions'
t21 = Tag.create :name => 'gratitude'
t22 = Tag.create :name => 'dating'
t23 = Tag.create :name => 'music'
t24 = Tag.create :name => 'meditation'
t25 = Tag.create :name => 'struggles'
t26 = Tag.create :name => 'stupid'
t27 = Tag.create :name => 'love'
t28 = Tag.create :name => 'mechanical keyboards'
t29 = Tag.create :name => 'happiness'
t30 = Tag.create :name => 'party'
t31 = Tag.create :name => 'alcoholism'
t32 = Tag.create :name => 'loneliness'
t33 = Tag.create :name => 'morbid'
t34 = Tag.create :name => 'death'

puts "#{ Tag.count } tags"

# End tags #

# Anecdotes #

Anecdote.destroy_all

d1 = Anecdote.create :title => 'Your Life, Right Now', :content => %(Two years ago I was having an awful time during a major bout of depression in combination with a problem I was having physically that my doctor was telling me to ”Wait and see if it goes away on its own. If it’s still happening a month from now we’ll run some tests” on repeat for over a year. I wish I could go back and tell myself that things are bad, but that life is still there to be enjoyed if you’re present. To be in my body and not my head so that I could notice the nice moments that pop up even in the worst parts of your life. Waiting till things are good sometimes means waiting a really long time, but your life is happening right now. Be there for it.)
d1.tags << t5 << t8 << t13 << t21 << t25

d2 = Anecdote.create :title => 'Fear of the Dark', :content => 'I have fear of the dark. So when I was little my parents went to some sort of ceremony. Load shedding happened means all the lights went off I was the only one at home. Could not stop crying even my parents held me.'
d2.tags << t9 << t10

d3 = Anecdote.create :title => 'Sometimes its good not to force things', :content => 'One time I tried to fart, but what came out was not a fart.'
d3.tags << t11 << t12 << t25 << t26

d4 = Anecdote.create :title => "Work to live, don't live to work", :content => 'Your life outside of work is equally as important. After going through a little work rut (feeling resentful and negative about long hours etc) I realised that I need to prioritise seeing my family, friends and making the time to do the things I love like cooking and pottery.'
d4.tags << t1 << t14 << t15 << t16 << t25

d5 = Anecdote.create :title => 'Emotional Sensitivity', :content => "Growing up, it's easy to feel emotionally affected by the smallest things that don't go right in life. I believe it's because as children we lack perspective of the scope of our problems. A little fight with your brother, or an embarrassing moment as school can make the world crumble around you. It's just a part of growing up. Now as an adult I have moments where I wish the little moments affected me more, because in a way, it's beautiful to be that sensitive to life and the things that happen around you. Weird."
d5.tags << t10 << t20 << t21

d6 = Anecdote.create :title => 'I love my doggie woggie', :content => "He greets me every morning with a million licks and kisses, he greets me everytime I come home like he hasn't seen me in years, he follows me around the house 24/7 even if I'm not feeding him. He gives me so much love and I love him too."
d6.tags << t6 << t21 << t27 << t29

d7 = Anecdote.create :title => 'Small dopamine hits', :content => "It doesn't seem to me like my dog can tell when I'm upset. When I'm upset, he'll give me the same love and affection as he would when I'm happy. Whenever I come home, he runs to the door to lick my face and show his love, all while squealing out of excitement. The same goes for when I come home in tears. There's really no difference. But honestly, this is ok, and maybe it's what I need."
d7.tags << t6 << t8 << t21 << t27

d8 = Anecdote.create :title => 'Humbling Experience', :content => "I've learnt, from my experience anyway, To stop resisting the direction in which life takes you, you cannot control that but rather to embrace it and appreciate every opportunity life presents."
d8.tags << t12 << t21

d9 = Anecdote.create :title => 'Raisins', :content => 'I asked a girl out because she was pretty. Later to find out she was a [redacted]. At the end of the day we all become raisins, pick sweeter ones instead.'
d9.tags << t2 << t11 << t12 << t22 << t25 << t26

d10 = Anecdote.create :title => 'Music can take you places and can be a great healer', :content => %(Music is a huge part of my life. I grew up in an environment that was surrounded by good music at all times. I've used music as a meditative tool and it has aided and enhanced my day to day experience greatly. I have been through struggles mentally and ive always turned to music to keep me going.)
d10.tags << t23 << t24 << t25

d11 = Anecdote.create :title => '*moaning noises*', :content => %(I switched the switches (no pun intended) on my mech (mechanical keyboard) from Gateron Browns to lubed Glorious Pandas last week and I'm loving the result. Every keystroke feels so satisfying and smooth, and the thocking sound it makes is music to my ears. I'm about to [redacted].)
d11.tags << t28 << t29

d12 = Anecdote.create :title => 'When I was mid 20s party boy', :content => %(At a house party I held I drank so much that when I had gone to bed in the early morning I remember taking a shot before sleeping. When I had woken up I was told that I had gotten out of my bed a few hours after sleeping and slept walk into my mum's bedroom (she was away overseas). Took off my pants and then proceeded to piss on the floor of my mum's bedroom. A friend of mine was sleeping in my mum's bed and she woke up screaming at me to stop. I was blacked out and couldn't react. Then I took a few steps to leave and slipped in my own piss and passed out in a puddle of my own urine. My friend then yelled out for help and the other people who had slept over came to find me passed out in my piss. They then changed me and put me back into bed. Wild.)
d12.tags << t1 << t11 << t12 << t26 << t30 << t31

d13 = Anecdote.create :title => 'Being alone without being loneley', :content => %(One thing I feel grateful for is the ability to be alone, do things alone, and go places on my own without feeling lonely. It's allowed me to commit to solo trips overseas, take solace in the comfort of my own body, and to really enjoy my own company. I think it's important to remind myself of this and to really be grateful and appreciate that I've come to be at this place in life because for others it can go in the complete opposite direction. As Robin Williams once said: "I used to think the worst thing in life was to end up all alone. It’s not. The worst thing in life is ending up with people who make you feel all alone”.)
d13.tags << t32 << t21 << t20

d14 = Anecdote.create :title => 'Death', :content => %(There was one moment in my life where I really truly believed I was dead, and in the afterlife. For me the afterlife was a point in time, frozen, and lasting for eternity. It scared me, but I was ready to accept it. Maybe because at that point, death, the afterlife, and that moment stuck in time was all that existed in my world - that it was decided, that it was my fate, and I could do nothing but accept it.)
d14.tags << t33 << t34

puts "#{ Anecdote.count } anecdotes"

# End anecdotes #

# Themes #

Theme.destroy_all

f1 = Theme.create :name => 'default'
f2 = Theme.create :name => 'superuser'
f3 = Theme.create :name => 'magic'
f4 = Theme.create :name => 'nord'
f5 = Theme.create :name => 'rosepine'
f6 = Theme.create :name => 'eighties'
f7 = Theme.create :name => 'vscode'
f8 = Theme.create :name => 'midnight'
f9 = Theme.create :name => 'bliss'
f10 = Theme.create :name => 'dots'
puts "#{ Theme.count } themes"

# End themes #

# Users and anecdotes #

u2.anecdotes << d2 << d1 # egg
u3.anecdotes << d3 << d11 # hotdogs
u4.anecdotes << d4 << d12 # drumstick
u5.anecdotes << d5 # kfc
u6.anecdotes << d6 # donut
u7.anecdotes << d7 # rooster
u8.anecdotes << d8 # nugget
u9.anecdotes << d9 # chicomarx
u10.anecdotes << d10 # karlmarx
puts "Users and anecdotes"

# End #