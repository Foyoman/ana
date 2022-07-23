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
puts "#{ Tag.count } tags"

# End tags #

# Anecdotes #

Anecdote.destroy_all

d1 = Anecdote.create :title => 'Your life, right now', :content => %(Two years ago I was having an awful time during a major bout of depression in combination with a problem I was having physically that my doctor was telling me to ”Wait and see if it goes away on its own. If it’s still happening a month from now we’ll run some tests” on repeat for over a year. I wish I could go back and tell myself that things are bad, but that life is still there to be enjoyed if you’re present. To be in my body and not my head so that I could notice the nice moments that pop up even in the worst parts of your life. Waiting till things are good sometimes means waiting a really long time, but your life is happening right now. Be there for it.)
d1.tags << t5 << t8 << t13

d2 = Anecdote.create :title => 'Fear of the dark', :content => 'I have fear of the dark. So when I was little my parents went to some sort of ceremony. Load shedding happened means all the lights went off I was the only one at home. Could not stop crying even my parents held me.'
d2.tags << t9 << t10

d3 = Anecdote.create :title => 'Sometimes its good not to force things', :content => 'One time I tried to fart, but what came out was not a fart.'
d3.tags << t11 << t12 

d4 = Anecdote.create :title => "Work to live, don't live to work", :content => 'Your life outside of work is equally as important. After going through a little work rut (feeling resentful and negative about long hours etc) I realised that I need to prioritise seeing my family, friends and making the time to do the things I love like cooking and pottery.'
d4.tags << t1 << t14 << t15 << t16

d5 = Anecdote.create :title => 'test d5', :content => 'test d5 content family'
d5.tags << t1

d6 = Anecdote.create :title => 'test d6', :content => 'test d6 content acdemia pet'
d6.tags << t3 << t6

d7 = Anecdote.create :title => 'test d7', :content => 'test d7 content pet depression'
d7.tags << t6 << t8

puts "#{ Anecdote.count } anecdotes"

# End anecdotes #

# Anas #

Ana.destroy_all

a1 = Ana.new
a1.anecdotes << d2 << d3
a1.content = a1.anecdotes.map{|anecdote| anecdote[:content]}
# a1.tags = a1.anecdotes.tags
a1.title = 'Family and studies'
a1.user = u1
a1.save

a2 = Ana.new
a2.anecdotes << d6 << d7
a2.content = a2.anecdotes.map{|anecdote| anecdote[:content]}
a2.title = 'Donut, my dawg'
a2.save
puts "#{ Ana.count } anas"

# End anas #
