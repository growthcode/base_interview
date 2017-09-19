class InitSchema < ActiveRecord::Migration
  def change
    create_table :people, force: true do |t|
      t.string :name, null: false
      t.integer :role_id, null: false
      t.integer :location_id
      t.integer :manager_id
      t.integer :salary, null: false
    end

    create_table :roles, force: true do |t|
      t.string :name, null: false
      t.boolean :billable, null: false
    end

    create_table :locations, force: true do |t|
      t.string :name, null: false
      t.integer :region_id, null: false
    end

    create_table :regions, force: true do |t|
      t.string :name, null: false
    end
  end
end
