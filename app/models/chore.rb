class Chore < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :maximum=>30, :too_long => "must be less 30 characters."
  validates_length_of :description, :maximum=>100, :too_long => "must be less than 100 characters."
  validates_inclusion_of :day, :in => %w( monday Monday tuesday Tuesday wednesday Wednesday thursday Thursday friday Friday saturday Saturday sunday Sunday )
  
  def status
    finished? ? 'Chore completed!' : 'Did you forget something?'
  end
end
