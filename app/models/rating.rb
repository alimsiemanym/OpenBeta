class Rating < ActiveRecord::Base
  validates_length_of :code, :minimum => 1
  validates_uniqueness_of :code
  validates_presence_of :code
  
  def to_s
    self.code
  end

  def code=(code)
    self[:code] = code.upcase.strip
  end
end
