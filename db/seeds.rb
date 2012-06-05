# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def law(name, balance)
  Law.create!(:name => name, :balance => balance)
end

law "abortion", 1
law "animal research", -1
law "police behavior", -1
law "privacy", -1
law "death penalty", -1
law "nuclear power", -1
law "pollution", -1
law "labor", 0
law "gay", 1
law "corporate", 0
law "free speech", 0
law "flag burning", 1
law "gun control", -1
law "tax", 0
law "women", 1
law "civil rights", 1
law "drugs", -1
law "immigration", 0
law "elections", 0
law "military", -1
law "torture", -1

GovernmentOrganisation.create!(:name => "senate",
                              :arch_conservatives => 25,
                              :conservatives => 35,
                              :moderates => 20,
                              :liberals => 15,
                              :elite_liberals => 5)

GovernmentOrganisation.create!(:name => "house",
                               :arch_conservatives => 50,
                               :conservatives => 200,
                               :moderates => 100,
                               :liberals => 5,
                               :elite_liberals => 35)
GovernmentOrganisation.create!(:name => "court",
                               :arch_conservatives => 2,
                               :conservatives => 3,
                               :moderates => 0,
                               :liberals => 3,
                               :elite_liberals => 2)

@leader = Person.create(:first_name => "Hiro",
              :last_name => "Protagonist",
              :alias => "speck",
              :male => true,
              :age => 29,
              :leaning => 2)

def a (name, val)
  @leader.attributes << Attribute.create(:name => name, :value => val)
end

a(:heart, 8)
a(:wisdom, 1)
a(:intelligence, 3)
a(:agility, 5)
a(:strength, 4)
a(:health, 6)
a(:charisma, 4)


def q(question, a, b, c, d, e)
  StartingQuestion.create!(:question => question, :a =>a, :b=>b, :c=>c, :d=>d, :e=>e)
end


q("The day I was born in 1984...",
  "the Polish priest Popieluszko was kidnapped by government agents.",
  "was the 3rd anniversary of the assassination attempt on Ronald Reagan.",
  "the Macintosh was introduced.",
  "the Nobel Peace Prize went to Desmond Tutu for opposition to apartheid.",
  "the Sandanista Front won the elections in Nicaragua.")
q("When I was bad...",
  "my parents grounded me and hid my toys, but I knew where they put them.",
  "my father beat me.  I learned to take a punch earlier than most.",
  "I was sent to my room, where I studied quietly by myself, alone.",
  "my parents argued with each other about me, but I was never punished.",
  "my father lectured me endlessly, trying to make me think like him.")
q("In elementary shool ...",
  "I was mischievous, and always up to something.",
  "I had a lot of repressed anger.  I hurt animals.",
  "I was at the head of the class, and I worked very hard.",
  "I was unruly and often fought with the other children.",
  "I was the class clown.  I even had some friends.")
q("When I turned 10...",
  "my parents divorced.  Whenever I talked, they argued, so I stayed quiet.",
  "my parents divorced.  Violently.",
  "my parents divorced.  Acrimoniously.  I once tripped over the paperwork!",
  "my parents divorced.  Mom slept with the divorce lawyer.",
  "my parents divorced.  It still hurts to read my old diary.")
q("In junior high school",
  "I was into chemistry.  I wanted to know what made the world tick.",
  "I played guitar in a grunge band.  We sucked, but so did life.",
  "I drew things, a lot.  I was drawing a world better than this.",
  "I played violent video games at home.  I was a total outcast.",
  "I was obsessed with swords, and started lifting weights.")
q("Things were getting really bad...",
  "when I stole my first car.  I got a few blocks before I totaled it.",
  "and I went to live with my dad.  He had been in Nam and he still drank.",
  "and I went completely goth.  I had no friends and made costumes by myself.",
  "when I was sent to religious counseling, just stressing me out more.",
  "and I tried being a teacher's assistant.  It just made me a target.")
q("Well, I knew it had reached a crescendo when...",
  "I stole a cop car when I was only 14.  I went to juvie for 6 months.",
  "my step mom shot her ex-husband, my dad, with a shotgun.  She got off.",
  "I tried wrestling for a quarter, desperate to fit in.",
  "I got caught making out, and now I needed to be 'cured' of homosexuality.",
  "I resorted to controlling people.  Had my own clique of outcasts.")
q("I was only 15 when I ran away, and...",
  "I started robbing houses:  rich people only.  I was fed up with their crap.",
  "I hung out with thugs and beat the shit out of people.",
  "I got a horrible job working fast food, smiling as people fed the man.",
  "I let people pay me for sex.  I needed the money to survive.",
  "I volunteered for a left-wing candidate. It wasn't *real*, though, you know?")
q("Life went on.  On my 18th birthday...",
  "I got my hands on an old Beetle.  It's still in great shape.",
  "I bought myself an assault rifle.",
  "I celebrated.  I'd saved a thousand bucks!",
  "I went to a party and met a cool law student.  We've been dating since.",
  "I managed to acquire secret maps of several major buildings downtown.")
q("For the past few years, I've been...",
  "stealing from Corporations.  I know they're still keeping more secrets.",
  "a violent criminal.  Nothing can change me, or stand in my way.",
  "taking college courses.  I can see how much the country needs help.",
  "surviving alone, just like anyone.  But we can't go on like this.",
  "writing my manifesto and refining my image.  I'm ready to lead.")