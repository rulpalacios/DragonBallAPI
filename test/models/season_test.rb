require 'test_helper'

class SeasonTest < ActiveSupport::TestCase
  def season
    @season ||= build(:season)
  end

  def test_valid
    assert season.valid?
  end
end
