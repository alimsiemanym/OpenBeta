require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  
  test "should not save genre without name" do
    g = Genre.new
    assert !g.save
    g = Genre.new(:name => '')
    assert !g.save
    g = Genre.new(:name => ' ')
    g.save
  end

  test "name should not have surrounding whitespace" do
    g = Genre.new( :name => ' can i haz genre ')
    assert_equal g.name, 'can i haz genre'
  end

  test "should not save genre with nonunique name" do
    name = Faker::Lorem.words[0]
    Genre.create!(:name => name)
    assert_raise(ActiveRecord::RecordInvalid) {Genre.create!(:name => name)}
  end

  test "should use name when rendered as a string" do
    name = Faker::Lorem.words[0]
    g = Genre.new(:name => name)
    assert_equal g.to_s, name
  end
end
