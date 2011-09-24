class Genre < ActiveRecord::Base
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

# == Schema Information
#
# Table name: genres
#
#  id          :integer         not null, primary key
#  name        :string(255)     
#  created_at  :datetime
#  updated_at  :datetime
#

