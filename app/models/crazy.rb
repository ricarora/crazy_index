class Crazy < ActiveRecord::Base
  validates :sleep, presence: true

  validates :late, :no_break, :eat, :exercise, :drunk, :callmom,
    :inclusion => {:in => [true, false]}
end
