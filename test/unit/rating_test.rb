require 'test_helper'

class RatingTest < ActiveSupport::TestCase

  test "should not save rating without code" do
    g = Rating.new
    assert !g.save
    g = Rating.new(:code => '')
    assert !g.save
    g = Rating.new(:code => ' ')
    g.save
  end

  test "should strip code with excess whitespace" do
  end

  test "should convert code to uppercase" do
  end

  test "should not save rating with nonunique code" do
  end

  test "should use code when rendered as string" do
  end

end
