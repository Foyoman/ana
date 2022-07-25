# Users #

User.destroy_all
u1 = User.create :username => 'Foyoman', :password => 'chicken', :admin => true
u2 = User.create :username => 'egg', :password => 'chicken'
puts "#{ User.count } users"

# End users #

# Tags #

Tag.destroy_all

t1 = Tag.create :name => 'family'
t2 = Tag.create :name => 'relationship'
t3 = Tag.create :name => 'academia'
t4 = Tag.create :name => 'loss of a loved one'
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
puts "#{ Tag.count } tags"

# End tags #

# Anecdotes #

Anecdote.destroy_all

d1 = Anecdote.create :title => 'Your Life, Right Now', :content => %(Two years ago I was having an awful time during a major bout of depression in combination with a problem I was having physically that my doctor was telling me to ”Wait and see if it goes away on its own. If it’s still happening a month from now we’ll run some tests” on repeat for over a year. I wish I could go back and tell myself that things are bad, but that life is still there to be enjoyed if you’re present. To be in my body and not my head so that I could notice the nice moments that pop up even in the worst parts of your life. Waiting till things are good sometimes means waiting a really long time, but your life is happening right now. Be there for it.)
d1.tags << t5 << t8 << t13 << t21

d2 = Anecdote.create :title => 'Fear of the Dark', :content => 'I have fear of the dark. So when I was little my parents went to some sort of ceremony. Load shedding happened means all the lights went off I was the only one at home. Could not stop crying even my parents held me.'
d2.tags << t9 << t10

d3 = Anecdote.create :title => 'Sometimes its good not to force things', :content => 'One time I tried to fart, but what came out was not a fart.'
d3.tags << t11 << t12 

d4 = Anecdote.create :title => "Work to live, don't live to work", :content => 'Your life outside of work is equally as important. After going through a little work rut (feeling resentful and negative about long hours etc) I realised that I need to prioritise seeing my family, friends and making the time to do the things I love like cooking and pottery.'
d4.tags << t1 << t14 << t15 << t16

d5 = Anecdote.create :title => 'Emotional Sensitivity', :content => "Growing up, it's easy to feel emotionally affected by the smallest things that don't go right in life. I believe it's because as children we lack perspective of the scope of our problems. A little fight with your brother, or an embarrassing moment as school can make the world crumble around you. It's just a part of growing up. Now as an adult I have moments where I wish the little moments affected me more, because in a way, it's beautiful to be that sensitive to life and the things that happen around you. Weird."
d5.tags << t10 << t20 <<t21

d6 = Anecdote.create :title => 'I love my doggie woggie', :content => "He greets me every morning with a million licks and kisses, he greets me everytime I come home like he hasn't seen me in years, he follows me around the house 24/7 even if I'm not feeding him. He gives me so much love and I love him too."
d6.tags << t6 << t21

d7 = Anecdote.create :title => 'Small dopamine hits', :content => "It doesn't seem to me like my dog can tell when I'm upset. When I'm upset, he'll give me the same love and affection as he would when I'm happy. Whenever I come home, he runs to the door to lick my face and show his love, all while squealing out of excitement. The same goes for when I come home in tears. There's really no difference. But honestly, this is ok, and maybe it's what I need."
d7.tags << t6 << t8 << t21

d8 = Anecdote.create :title => 'Humbling Experience', :content => "I've learnt, from my experience anyway, To stop resisting the direction in which life takes you, you cannot control that but rather to embrace it and appreciate every opportunity life presents."
d8.tags << t12 << t21

puts "#{ Anecdote.count } anecdotes"

# End anecdotes #

# Anas #

Ana.destroy_all

a1 = Ana.new
a1.anecdotes << d2 << d3
a1.tags << t9 << t10 << t11 << t12 
a1.content = a1.anecdotes.map{|anecdote| anecdote[:content]}
# a1.tags = a1.anecdotes.tags
a1.title = 'Family and studies'
a1.user = u1
a1.save

a2 = Ana.new
a2.anecdotes << d6 << d7
a2.tags << t3 << t6 << t6 << t8
a2.content = a2.anecdotes.map{|anecdote| anecdote[:content]}
a2.title = 'Donut, my dawg'
a2.save
puts "#{ Ana.count } anas"

# End anas #
