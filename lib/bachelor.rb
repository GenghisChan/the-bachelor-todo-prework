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
  data.each do |season, contestants|
    contestants.each do |k|
      k.each do |key, value|
   if value == occupation
     return k["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
counter = 0
  data.each do |season, contestants|
    contestants.each do |people|
      people.each do |key, value|
   if value == hometown
     counter += 1
        end
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |people|
      people.each do |key, value|
   if value == hometown
      return people["occupation"]
        end
      end
    end
  end
end


def get_average_age_for_season(data, season)
ages = Array.new
total = 0

data[season].each do |people|
  people.each do |key, value|
    if key == "age"
      ages.push(people["age"].to_f)
      end
    end
    ages.inject(0) do |sum, x|
    total = sum + x
    end
  end
    average = total/ages.length
    return average.round
end
