class Task < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :maximum=>30, :too_long => "must be less 30 characters."
  validates_length_of :description, :maximum=>100, :too_long => "must be less than 100 characters."
end
