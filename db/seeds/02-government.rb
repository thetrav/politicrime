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
