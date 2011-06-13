class ChangeTaskToChore < ActiveRecord::Migration
  def self.up
      rename_table :tasks, :chores
  end 
     
  def self.down
      rename_table :chores, :tasks
  end
end