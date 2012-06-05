class GovernmentOrganisation < ActiveRecord::Base
  attr_accessible :name, :arch_conservatives, :conservatives, :moderates, :liberals, :elite_liberals
end