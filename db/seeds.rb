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
t35 = Tag.create :name => 'french'
t36 = Tag.create :name => 'spanish'
t37 = Tag.create :name => 'loss'
t38 = Tag.create :name => 'fear'
t39 = Tag.create :name => 'philosophy'

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
d14.tags << t33 << t34 << t38

d15 = Anecdote.create :title => 'TIFI', :content => %(First I couldn't fall asleep until very late the night before. I slept through my alarm. Only got 4 hours of sleep. When I got out of bed I realised my phone didn't charge because of my faulty cable. Couldn't have breakfast cause I was running late. Put salt in my coffee instead of sugar. When I left the house I forgot my earphones. I arrived to the train station as my train was leaving. When I got to school I had already talked to several people, including my crush, before I realised I had an exposed booger in my nose, and a piece of lettuce between my two front teeth. I was unpacking my bag when I realised my bottle's lid wasn't screwed on properly, and it soaked everything in my bag. When I was having lunch I spilt soup on my favourite shirt. I went to the bathroom and made a mess on myself and the seat. My teacher called me out and embarrassed me in front of the class for not paying attention. On my way home I forgot my notebook on the train. My phone ran out of batteries as I was leaving the station, so I couldn't tap off. I got fined by a transit officer. I couldn't call my mum to pick me up so I had to walk half an hour to get home. It rained. A car drove through a puddle and splashed muddy water all over me. As I walked through the front door of my house, my dog, as he routinely does, excitedly ran down from upstairs to greet me with all the love and affection he could give. Squealing with excitement, he licked and nuzzled my face for at least 5 minutes. Life is good.)
d15.tags << t29 << t21 << t6 

d16 = Anecdote.create :title => 'new record!!!', :content => "I finally reached 110wpm on monkeytype today B) while using my trusty mech (mechanical keyboard) of course. I'm so happy, and so SO so SO so... COOL!!! I love my keeb (keyboard) soo much. Sometimes I go to sleep hugging it hehehe. It's so cool :)"
d16.tags << t28 << t27

d17 = Anecdote.create :title => 'Effectivement, faut que ça sorte.', :content => "Ma maman est partie hier soir. \n
Mi avril, elle avait 'une petite baisse d'appétit'. Fin avril, cancer détecté. Mai, elle rentre à l’hôpital. Tests, analyses, opérations. En boucle, en boucle, en boucle. Semaine dernière, première session de chimio. Elle ne l'a pas supporté. \n
Et puis hier soir, elle s'est éteinte. Paisiblement, j'espère. Entourée de sa famille, et d'amour. De tellement d'amour. \n
Je l'avais vu une fois, depuis mars 2020. Une seule putain de fois. Parce que mes parents sont âgés, parce qu'elle avait un peu peur, parce qu'elle ne voulait pas prendre de risques. \n
Avril, ils étaient vaccinés, contre-vaccinés, rassurés. Ça déconfinait. On programmait déjà l'occasion de se retrouver enfin tous en famille. \n
Je l'avais vu une fois, rapidement, en juillet dernier. On s'était fait un petit câlin, rapide et furtif parce que 'attention le covid quand même'. Et quand je l'ai revue, à l’hôpital, elle semblait avoir pris 20 ans, amaigrie, essoufflée, fatiguée. Il y avait de la tristesse et de la peur dans ses yeux. \n
Tout s'est passé tellement vite. Beaucoup, beaucoup trop vite. \n
Je suis dévastée. Parce que ma maman était une femme extraordinaire, bourrée d'amour, de tendresse, de force et de courage. Je suis emplie d'une rage immense. Je trouve même pas les mots pour exprimer la cruauté, l'injustice de ces circonstances. Je me sens complètement désemparée, perdue, écrasée sous le poids d'une situation que je n'ai même pas encore commencé à assimiler. \n
Et le pire, dans tout ça. Le pire. C'est que la seule chose qui pourrait m'apaiser un peu, là, serait de me blottir dans les bras de ma maman."
d17.tags << t35 << t1 << t37 << t13 << t20 << t34 << t38

d18 = Anecdote.create :title => "Je ne ressens plus d'envies soudaines de me foutre en l'air.", :content => "Ça doit facilement faire deux mois que j'ai pas eu de pensés suicidaires, j'ai trouvé quelques CDD et finalement un CDI où je suis payé à presque rien faire (je suis pas quelqu'un de physique), je suis dans une équipe géniale et mes client-e-s sont vraiment très agréables. \n
J'ai passé deux années de merde, j'ai du quitter un emploi à cause d'une grosse rechûte dépressive et la pandémie n'a rien arrangé. Maintenant j'ai du temps, de l'argent et un peu de stabilité dans ma vie mais il manque quelque chose quand même et je sais pas ce que c'est... \n
Je sais pas pourquoi je poste ça, probablement l'envie de partager mon bien-être actuel ou tout simplement ventiler un peu. En tout cas merci de m'avoir lu, bonne soirée/journée !"
d18.tags << t35 << t21

d19 = Anecdote.create :title => "La muerte, el miedo y lo infinito.", :content => %(Ayer estuve reflexionando sobre la existencia del ser humano y los miedos, quise ir un poco más allá de la ya muy vista reflexión de que todos los miedos vienen de una manera u otra del miedo primitivo a la muerte y con esta reflexión me vienen dudas; ¿es posible que una persona no tenga nada de miedo a la muerte? incluso en el caso de que una persona se suicide, ¿es posible que esa persona no sienta miedo en la caída o justo antes de apretar un gatillo? personalmente creo que no, creo que aunque sea por un segundo esas personas pasan miedo. Esto me recuerda a una frase de Secretariat (personaje de BH) "Antes de saltar, ¿por qué no vi la vista en medio de la caída?" reflejando el miedo que tuvo en medio de la caída cuando se tiró por un puente. \n
Y tras estas preguntas que me planteé me di cuenta de algo que nunca había pensado; \n
Sí, la muerte da miedo, pero alguna vez os habéis parado a pensar el miedo que da no poder morir nunca? estar ahí para siempre? creo que a los humanos les da miedo cualquier para siempre, da igual si es un descanso para siempre o una vida para siempre pero ese término, un término infinito, se escapa de nuestras manos porque no somos infinitos y pensar en que en algún momento estaremos viviendo un infinito, aunque puede que no seamos conscientes de ello, es aterrador.)
d19.tags << t36 << t38 << t34 << t39

puts "#{ Anecdote.count } anecdotes"

# End anecdotes #

# Themes #

Theme.destroy_all

f1 = Theme.create :name => 'default'
f2 = Theme.create :name => 'drowning'
f3 = Theme.create :name => 'magic'
f4 = Theme.create :name => 'nord'
f5 = Theme.create :name => 'rosepine'
f6 = Theme.create :name => 'olivia'
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

Comment.destroy_all