def get_first_name_of_season_winner(data, season)
  def winner(data, season)
  data[season].each_with_index do |name, index|
    if data[season][index].has_value?("Winner")
      return data[season][index][:"name"].split(" ")[index]
      end
  end
end

end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
