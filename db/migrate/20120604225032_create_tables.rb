class CreateTables < ActiveRecord::Migration
  def up
    create_table :laws do |t|
      t.string :name
      t.integer :balance
    end

    create_table :government_organisations do |t|
      t.string :name
      t.integer :arch_conservatives
      t.integer :conservatives
      t.integer :moderates
      t.integer :liberals
      t.integer :elite_liberals
    end

    create_table :occupation do |t|
      t.string :name
    end

    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.boolean :male
      t.integer :age
      t.integer :leaning
      t.integer :occupation_id
      t.integer :squad_id
    end

    create_table :stats do |t|
      t.string :name
      t.integer :value
      t.integer :person_id
    end

    create_table :skills do |t|
      t.string :name
      t.integer :value
      t.integer :person_id
    end

    create_table :starting_questions do |t|
      t.string :question
    end

    create_table :starting_answers do |t|
      t.string :label
      t.text :mods
      t.integer :starting_question_id
    end

    create_table :areas do |t|
      t.string :name
      t.integer :parent_area_id
    end

    create_table :locations do |t|
      t.string :name
      t.integer :area_id
    end

    create_table :squads do |t|
      t.string :name
    end
  end

end
