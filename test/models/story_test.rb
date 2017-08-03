require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @story = Story.new(name: "Example",content: "Example content")
  end

  test "name should not be too long" do
    @story.name = "a"*21
    assert_not @story.valid?
  end 

end
