def get_first_name_of_season_winner(data, season)
data[season].each do |name|
  name.each do |k, v|
   if v == "Winner"
     full_name = name["name"]
     return full_name.split(" ").first
     end
    end
  end
end

#Build a method, get_contestant_name, that takes in the data hash and an occupation string
#and returns the name of the woman who has that occupation.
def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |k, v|
      k.each do |key, value|
   if value == occupation
     name = k[:name]
     return name
    end
  end
  end
  end
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
