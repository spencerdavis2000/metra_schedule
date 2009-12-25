module MetraSchedule
  module TrainData
    attr_reader :LINES

    LINES = {
    :up_nw => {
      :name => "Union Pacific Northwest", 
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/up-nw/schedule.full.html',
      :stations => [
        :ogilve,
        :clyborn,
        :irving_park,
        :jefferson_park,
        :gladstone_park,
        :norwood_park,
        :edison_park,
        :park_ridge,
        :dee_road,
        :des_plaines,
        :cumberland,
        :mount_prospect,
        :arlington_heights,
        :arlington_park,
        :palatine,
        :barrington,
        :fox_river_grove,
        :cary,
        :pingree_road,
        :crystal_lake,
        :woodstock,
        :mchenry,
        :harvard
      ],
      :tables => {:weekday_inbound => 0..1, :saturday_inbound => 2, :sunday_inbound => 3, \
        :weekday_outbound => 4..6, :saturday_outbound => 7, :sunday_outbound => 8 }
    },
    :up_n => {
      :name => "Union Pacific North",
      :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/up-n/schedule.full.html',
      :stations => [
        :ogilve,
        :clyborn,
        :ravenswood,
        :rogers_park,
        :evanston_main_street,
        :evanston_davis_street,
        :evanston_central_street,
        :wilmette,
        :kenilworth,
        :indian_hill,
        :winnetka,
        :hubbard_woods,
        :glencoe,
        :braeside,
        :ravinia_park,
        :ravinia,
        :highland_park,
        :highwood,
        :fort_sheridan,
        :lake_forest,
        :lake_bluff,
        :greate_lakes,
        :north_chicago,
        :waukegan,
        :zion,
        :winthrop_harbor,
        :kenosha
      ],
      :tables => {:weekday_inbound => 0..2, :saturday_inbound => 3, :sunday_inbound => 4, \
        :weekday_outbound => 5..7, :saturday_outbound => 8, :sunday_outbound => 9 }
    },
  }
  end
end
