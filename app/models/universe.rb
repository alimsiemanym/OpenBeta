class Universe < ActiveRecord::Base
  validates_length_of :name, :minimum => 1
  validates_length_of :abbreviation, :minimum => 1
  validates_uniqueness_of :name, :abbreviation
  validates_presence_of :name, :abbreviation
  
  def to_s
    self.name
  end

  def name=(name)
    self[:name] = name.strip
  end

  def abbreviation=(abbreviation)
    self[:abbreviation] = abbreviation.strip
  end

  def description=(description)
    if !description.nil?
      self[:description] = description.strip
    end
  end

end
