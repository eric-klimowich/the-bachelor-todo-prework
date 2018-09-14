def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, stats|
    stats.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.each do |season, stats|
    stats.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, stats|
    stats.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  data[season].each do |contestant|
    age_total += contestant["age"].to_i
  end
  average_age = age_total.to_f/data[season].length
  average_age.round
end
