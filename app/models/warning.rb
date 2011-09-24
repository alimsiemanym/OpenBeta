class Warning < ActiveRecord::Base
  validates_length_of :name, :minimum => 1
  validates_uniqueness_of :name
  validates_presence_of :name

  def to_s
    self.name
  end

  def name=(name)
    self[:name] = name.strip
  end
end
