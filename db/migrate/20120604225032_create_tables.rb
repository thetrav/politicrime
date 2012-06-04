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

    create_table :person do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.boolean :male
      t.integer :age
      t.integer :leaning
      t.integer :occupation_id
    end
  end

  def down
  end
end
