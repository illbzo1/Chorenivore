class UpdateChore < ActiveRecord::Migration
  
def self.up
  add_column :chores, :day, :string
end 

def self.down
  remove_column :chores, :day
  end
end