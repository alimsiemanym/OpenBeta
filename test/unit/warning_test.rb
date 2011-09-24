require 'test_helper'

class WarningTest < ActiveSupport::TestCase
  test "should not save warning without name" do
    g = Warning.new
    assert !g.save
    g = Warning.new(:name => '')
    assert !g.save
    g = Warning.new(:name => ' ')
    g.save
  end

  test "name should not have surrounding whitespace" do
    g = Warning.new( :name => ' can i haz warning ')
    assert_equal g.name, 'can i haz warning'
  end

  test "should not save warning with nonunique name" do
    name = Faker::Lorem.words[0]
    Warning.create!(:name => name)
    assert_raise(ActiveRecord::RecordInvalid) {Warning.create!(:name => name)}
  end

  test "should use name when rendered as a string" do
    name = Faker::Lorem.words[0]
    g = Warning.new(:name => name)
    assert_equal g.to_s, name
  end
end
