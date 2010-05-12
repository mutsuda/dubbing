class CreateBlips < ActiveRecord::Migration
  def self.up
    create_table :blips do |t|
      t.integer :convo_id
      t.string :title
      t.string :type
      t.string :character
      t.string :episode
      t.integer :tk

      t.timestamps
    end
  end

  def self.down
    drop_table :blips
  end
end
