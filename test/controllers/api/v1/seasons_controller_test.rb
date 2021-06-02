require 'test_helper'

module Api
  module V1
    class SeasonsControllerTest < ActionDispatch::IntegrationTest
      def test_index_successful_response
        get api_v1_seasons_path
        
        assert_response :success
      end

      def test_show_successful_response
        season = create(:season)
        get api_v1_season_path(season)
        assert_response :success
      end
    end
  end
end
