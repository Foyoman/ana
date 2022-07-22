# Users #

User.destroy_all
u1 = User.create :username => 'Foyoman', :password => 'chicken', :admin => true
u2 = User.create :username => 'egg', :password => 'chicken'
puts "#{ User.count } users"

# End users #

# Anecdotes #

Anecdote.destroy_all

d1 = Anecdote.create :title => 'test d1', :content => 'test d1 content family relationship'
d2 = Anecdote.create :title => 'test d2', :content => 'test d2 content anxiety'
d3 = Anecdote.create :title => 'test d3', :content => 'test d3 content loss of a loved one family'
d4 = Anecdote.create :title => 'test d4', :content => 'test d4 content body'
d5 = Anecdote.create :title => 'test d5', :content => 'test d5 content family'
d6 = Anecdote.create :title => 'test d6', :content => 'test d6 content acdemia pet'
d7 = Anecdote.create :title => 'test d7', :content => 'test d7 content pet depression'
puts "#{ Anecdote.count } anecdotes"

# End anecdotes #

# Anas #

Ana.destroy_all

a1 = Anecdote.new
# a1.anecdotes << d2 << d3
# a1.content = a1.anecdotes.map{|anecdote| anecdote[:content]}.join "\n"
# a1.tags = a1.anecdotes.tags
a1.title = 'Family and studies'
a1.user = u1
a1.save

a2 = Anecdote.new
# a2.anecdotes << d6 << d7
# a2.content = a2.anecdotes.map{|anecdote| anecdote[:content]}.join "\n"
a2.title = 'Donut, my dawg'
a2.save
puts "#{ Ana.count } anas"

# End anas #

# Tags #

Tag.destroy_all

t1 = Tag.create :name => 'family'
t2 = Tag.create :name => 'relationship'
t3 = Tag.create :name => 'academia'
t4 = Tag.create :name => 'loss of a loved one'
t5 = Tag.create :name => 'body'
t6 = Tag.create :name => 'pet'
t7 = Tag.create :name => 'anxiety'
t8 = Tag.create :name => 'depression'
puts "#{ Tag.count } tags"

# End tags #