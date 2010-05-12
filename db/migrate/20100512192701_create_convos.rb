class CreateConvos < ActiveRecord::Migration
  def self.up
    create_table :convos do |t|
      t.date :data
      t.string :studio
      t.string :factinfo

      t.timestamps
    end
  end

  def self.down
    drop_table :convos
  end
end
