require 'test_helper'

class InteractionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'if two users like eachother then generate a match' do
    #@interaction1 = interactions(:one)
    sender = users(:one)
    receiver = users(:two)
    interaction = Interaction.new(user_one: receiver, user_two: sender, like: true).save!
    assert_equal Match.count, 1
  end

end
