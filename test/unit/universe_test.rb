require 'test_helper'

class UniverseTest < ActiveSupport::TestCase
  test "should not save universe without name" do
    abbr = Faker::Lorem.words[0]
    u = Universe.new( :abbreviation => abbr )
    assert !u.save

    u = Universe.new( :name => '', :abbreviation => abbr )
    assert !u.save

    u = Universe.new( :name => '  ', :abbreviation => abbr )
    assert !u.save
  end

  test "should not save universe without abbreviation" do
    name = Faker::Lorem.words[0]
    u = Universe.new( :name => name )
    assert !u.save

    u = Universe.new( :name => name, :abbreviation => '' )
    assert !u.save

    u = Universe.new( :name => name, :abbreviation => ' ' )
    assert !u.save
  end

  test "should strip excess whitespace from name and abbreviation" do
    name = "    i can haz awesome naem!!! "
    abbr = Faker::Lorem.words[0]
    u = Universe.new( :name => name, :abbreviation => abbr )
    assert_equal name.strip, u.name

    name = Faker::Lorem.words[0]
    abbr = "    i can haz awesome abbr!!! "
    u = Universe.new( :name => name, :abbreviation => abbr )
    assert_equal abbr.strip, u.abbreviation
  end

  test "should not save universe with nonunique name" do
    abbr1 = Faker::Lorem.words[0]
    abbr2 = Faker::Lorem.words[0]
    name = Faker::Lorem.words[0]
    Gender.create!(:name => name, :abbreviation => abbr1)
    assert_raise(ActiveRecord::RecordInvalid) {Gender.create!(:name => name, :abbreviation => abbr2)}
  end

  test "should not save universe with nonunique abbreviation" do
    name1 = Faker::Lorem.words[0]
    name2 = Faker::Lorem.words[0]
    abbr = Faker::Lorem.words[0]
    Gender.create!(:name => name1, :abbreviation => abbr)
    assert_raise(ActiveRecord::RecordInvalid) {Gender.create!(:name => name2, :abbreviation => abbr)}
  end

  test "should not save universe with nonunique name and abbreviation" do
    name = Faker::Lorem.words[0]
    abbr = Faker::Lorem.words[0]
    Gender.create!(:name => name, :abbreviation => abbr)
    assert_raise(ActiveRecord::RecordInvalid) {Gender.create!(:name => name, :abbreviation => abbr)}
  end

  test "should use name when rendered as string" do
    name = Faker::Lorem.words[0]
    abbr = Faker::Lorem.words[0]
    u = Universe.new( :name => name, :abbreviation => abbr )
    assert_equal name, u.to_s
  end
end
