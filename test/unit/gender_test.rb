require 'test_helper'

class GenderTest < ActiveSupport::TestCase
  test "should not save gender without name" do
    g = Gender.new
    assert !g.save
    g = Gender.new(:name => '', :abbreviation => 'TEST')
    assert !g.save
    g = Gender.new(:name => ' ', :abbreviation => 'TEST')
    g.save
  end

  test "should not save gender without abbreviation" do
    g = Gender.new
    assert !g.save
    g = Gender.new(:name => 'TEST', :abbreviation => '')
    assert !g.save
    g = Gender.new(:name => 'TEST', :abbreviation => ' ')
    g.save
  end

  test "name should not have surrounding whitespace" do
    g = Gender.new( :name => ' can i haz gender ', :abbreviation => 'TEST')
    assert_equal 'can i haz gender', g.name
  end

  test "abbreviation should not have surrounding whitespace" do
    g = Gender.new( :name => 'TEST', :abbreviation => ' can i haz gender ')
    assert_equal 'can i haz gender', g.abbreviation
  end

  test "should not save gender with nonunique name" do
    name = Faker::Lorem.words[0]
    Gender.create!(:name => name, :abbreviation => 'TEST')
    assert_raise(ActiveRecord::RecordInvalid) {Gender.create!(:name => name, :abbreviation => 'TEST2')}
  end

  test "should not save gender with nonunique abbreviation" do
    name1 = Faker::Lorem.words[0]
    name2 = Faker::Lorem.words[0]
    abbr = Faker::Lorem.words[0]
    Gender.create!(:name => name1, :abbreviation => abbr)
    assert_raise(ActiveRecord::RecordInvalid) {Gender.create!(:name => name2, :abbreviation => abbr)}
  end

  test "should use name when rendered as a string" do
    name = Faker::Lorem.words[0]
    g = Gender.new(:name => name, :abbreviation => 'TEST')
    assert_equal name, g.to_s
  end
end
