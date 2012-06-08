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


def q(question, a, b, c, d, e)
  StartingQuestion.create!(:question => question, :a =>a, :b=>b, :c=>c, :d=>d, :e=>e)
end

def question(label, &answers)
  @q = StartingQuestion.new(:question => label)
  @q.instance_eval &answers
  @q.save!
end

question "The day I was born in 1984..." do
  answer "the Polish priest Popieluszko was kidnapped by government agents." do
     mod :stat, :agility, +2
  end
  answer "was the 3rd anniversary of the assassination attempt on Ronald Reagan." do
    mod :stat, :strength, +2
  end
  answer "the Macintosh was introduced." do
    mod :stat, :intelligence, +2
  end
  answer "the Nobel Peace Prize went to Desmond Tutu for opposition to apartheid." do
    mod :stat, :heart, +2
  end
  answer "the Sandanista Front won the elections in Nicaragua." do
    mod :stat, :charisma, +2
  end
end

question "When I was bad..." do
  answer "my parents grounded me and hid my toys, but I knew where they put them." do
    mod :skill, :security, +1
    mod :stat, :agility, +1
  end
  answer "my father beat me.  I learned to take a punch earlier than most." do
    mod :skill, :hand_to_hand, +1
    mod :stat, :health, +1
  end
  answer "I was sent to my room, where I studied quietly by myself, alone." do
    mod :skill, :writing, +1
    mod :stat, :intelligence, +1
  end
  answer "my parents argued with each other about me, but I was never punished." do
    mod :skill, :persuasion, +1
    mod :stat, :heart, +1
  end
  answer "my father lectured me endlessly, trying to make me think like him." do
    mod :skill, :psychology, +1
    mod :stat, :charisma, +1
  end
end

question "In elementary shool ..." do
  answer "I was mischievous, and always up to something." do
    mod :skill, :disguise, +1
    mod :stat, :agility, +1
  end
  answer "I had a lot of repressed anger.  I hurt animals." do
    mod :skill, :psychology, +1
    mod :stat, :agility, +1
    mod :stat, :heart, -1
    mod :stat, :strength, +1
  end
  answer "I was at the head of the class, and I worked very hard." do
    mod :skill, :writing, +1
    mod :stat, :intelligence, +1
  end
  answer "I was unruly and often fought with the other children." do
    mod :skill, :hand_to_hand, +1
    mod :stat, :strength, +1
  end
  answer "I was the class clown.  I even had some friends." do
    mod :skill, :persuasion, +1
    mod :stat, :charisma, +1
  end
end

question "When I turned 10..." do
  answer "my parents divorced.  Whenever I talked, they argued, so I stayed quiet." do
    mod :skill, :stealth, +1
  end
  answer "my parents divorced.  Violently." do
    mod :skill, :hand_to_hand, +1
  end
  answer "my parents divorced.  Acrimoniously.  I once tripped over the paperwork!" do
    mod :skill, :law, +1
  end
  answer "my parents divorced.  Mom slept with the divorce lawyer." do
    mod :skill, :seduction, +1
  end
  answer "my parents divorced.  It still hurts to read my old diary." do
    mod :skill, :writing, +1
  end
end

question "In junior high school" do
  answer "I was into chemistry.  I wanted to know what made the world tick." do
    mod :stat, :intelligence, +2
    mod :skill, :science, +2
  end
  answer "I played guitar in a grunge band.  We sucked, but so did life." do
    mod :stat, :charisma, +2
    mod :skill, :music, +2
  end
  answer "I drew things, a lot.  I was drawing a world better than this." do
    mod :stat, :heart, +2
    mod :skill, :art, +2
  end
  answer "I played violent video games at home.  I was a total outcast." do
    mod :stat, :agility, +2
    mod :skill, :computers, +2
  end
  answer "I was obsessed with swords, and started lifting weights." do
    mod :stat, :strength, +2
    mod :skill, :sword, +2
  end
end

question "Things were getting really bad..." do
  answer "when I stole my first car.  I got a few blocks before I totaled it." do
    mod :skill, :driving, +1
    mod :skill, :security, +1
  end
  answer "and I went to live with my dad.  He had been in Nam and he still drank." do
    mod :skill, :shotgun, +1
    mod :skill, :rifle, +1
    mod :skill, :psychology, +1
  end
  answer "and I went completely goth.  I had no friends and made costumes by myself." do
    mod :skill, :tailoring, +2
  end
  answer "when I was sent to religious counseling, just stressing me out more." do
    mod :skill, :religion, +1
    mod :skill, :psychology, +1
  end
  answer "and I tried being a teacher's assistant.  It just made me a target." do
    mod :skill, :teaching, +2
  end
end

question "Well, I knew it had reached a crescendo when..." do
  answer "I stole a cop car when I was only 14.  I went to juvie for 6 months." do
    mod :stat, :intelligence, +1
    mod :skill, :driving, +1
    mod :skill, :security, +1
  end
  answer "my step mom shot her ex-husband, my dad, with a shotgun.  She got off." do
    mod :stat, :agility, +1
    mod :skill, :shotgun, +2
  end
  answer "I tried wrestling for a quarter, desperate to fit in." do
    mod :stat, :strength, +1
    mod :skill, :hand_to_hand, +2
  end
  answer "I got caught making out, and now I needed to be 'cured' of homosexuality." do
    mod :stat, :heart, +1
    mod :skill, :seduction, +1
    mod :skill, :religion, +1
    #todo: gay lawyer=true
  end
  answer "I resorted to controlling people.  Had my own clique of outcasts." do
    mod :stat, :charisma, +1
    mod :skill, :persuasion, +1
  end
end
question "I was only 15 when I ran away, and..." do
  answer "I started robbing houses:  rich people only.  I was fed up with their crap." do
    mod :stat, :agility, +1
    mod :skill, :stealth, +1
    mod :skill, :security, +1
  end
  answer "I hung out with thugs and beat the shit out of people." do
    mod :stat, :strength, +1
    mod :skill, :hand_to_hand, +2
  end
  answer "I got a horrible job working fast food, smiling as people fed the man." do
    mod :stat, :charisma, +1
    mod :skill, :business, +1
  end
  answer "I let people pay me for sex.  I needed the money to survive." do
    mod :stat, :charisma, +1
    mod :skill, :seduction, +2
  end
  answer "I volunteered for a left-wing candidate. It wasn't *real*, though, you know?" do
    mod :stat, :intelligence, +1
    mod :skill, :law, +1
    mod :skill, :persuasion, +1
  end
end
question "Life went on.  On my 18th birthday..." do
  answer "I got my hands on an old Beetle.  It's still in great shape." do
    #todo: start with a beetle
  end
  answer "I bought myself an assault rifle." do
    #todo: start with an assault rifle
  end
  answer "I celebrated.  I'd saved a thousand bucks!" do
    #todo: start with 1k
  end
  answer "I went to a party and met a cool law student.  We've been dating since." do
    #todo: start with a lawyer
  end
  answer "I managed to acquire secret maps of several major buildings downtown." do
    #todo: start with maps
  end
end

question "For the past few years, I've been..." do
  answer "stealing from Corporations.  I know they're still keeping more secrets." do
    mod :stat, :intelligence, +2
    mod :stat, :agility, +2
    mod :skill, :security, +2
    mod :skill, :stealth, +2
    #todo: profession, thief
    #todo: residential apartment for base
    #todo: +$500
    #todo: black clothes armor
  end
  answer "a violent criminal.  Nothing can change me, or stand in my way." do
    mod :stat, :agility, +2
    mod :stat, :health, +2
    mod :skill, :rifle, +2
    mod :skill, :pistol, +2
    #todo: profession gang member
    #todo: business crackhouse base
    #todo: recruit gang
  end
  answer "taking college courses.  I can see how much the country needs help." do
    mod :stat, :intelligence, +4
    mod :skill, :science, +2
    mod :skill, :computers, +2
    mod :skill, :writing, +2
    mod :skill, :teaching, +2
    mod :skill, :business, +1
    mod :skill, :law, +2
    #todo: profession college student
    #todo: residential apartment for base
    #todo: +$200
  end
  answer "surviving alone, just like anyone.  But we can't go on like this." do
    mod :stat, :intelligence, +1
    mod :stat, :agility, +2
    mod :stat, :health, +2
    mod :skill, :first_aid, +2
    mod :skill, :street_sense, +2
    #todo: profession high school drop out
    #todo: residential shelter for base

    mod :stat, :heart, +1
    mod :stat, :intelligence, +1
    mod :stat, :agility, +1
    mod :stat, :strength, +1
    mod :stat, :health, +1
    mod :stat, :charisma, +1

  end
  answer "writing my manifesto and refining my image.  I'm ready to lead." do
    mod :stat, :charisma, +2
    mod :stat, :intelligence, +2
    mod :skill, :law, +1
    mod :skill, :writing, +1
    mod :skill, :persuasion, +2
    #todo: profession political activist
    #todo: base residential tenement
    #todo: +$50
    #todo: juice +50
  end
end