class Gender < ActiveRecord::Base
  validates_length_of :name, :minimum => 1
  validates_uniqueness_of :name
  validates_presence_of :name

  validates_length_of :abbreviation, :minimum => 1
  validates_uniqueness_of :abbreviation
  validates_presence_of :abbreviation

  def to_s
    self.name
  end

  def name=(name)
    self[:name] = name.strip
  end

  def abbreviation=(abbreviation)
    self[:abbreviation] = abbreviation.strip
  end
end
