class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.integer :user_id
      t.integer :owner
      t.integer :stream_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
