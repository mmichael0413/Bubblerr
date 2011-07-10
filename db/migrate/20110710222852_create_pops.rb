class CreatePops < ActiveRecord::Migration
  def self.up
    create_table :pops do |t|
      t.text :description
      t.integer :idea_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pops
  end
end
