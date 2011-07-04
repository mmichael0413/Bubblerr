class CreateBubbles < ActiveRecord::Migration
  def self.up
    create_table :bubbles do |t|
      t.text :description
      t.references :idea

      t.timestamps
    end
  end

  def self.down
    drop_table :bubbles
  end
end
