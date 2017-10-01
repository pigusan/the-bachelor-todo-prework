def get_first_name_of_season_winner(data_base, season_number)
  data.each do |season, array_of_contestant_objs|
    if season.to_s == season_number
      array_of_contestant_objs.each do |contestant_hash|
        if contestant_hash['status'] == "Winner"
          return contestant_hash['name'].split(' ').first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array_of_contestant_objs|
    array_of_contestant_objs.each do |contestant_hash|
      if contestant_hash['occupation'] == occupation
        return contestant_hash['name']
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array_of_contestant_objs|
    array_of_contestant_objs.each do |contestant_hash|
      if contestant_hash['hometown'] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, array_of_contestant_objs|
    array_of_contestant_objs.each do |contestant_hash|
      if contestant_hash['hometown'] == hometown
        return contestant_hash['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  avg_age = []
  sum = 0
  data.each do |season_number, array_of_contestant_objs|
    if season_number == season
      array_of_contestant_objs.each do |contestant_hash|
        avg_age << contestant_hash['age'].to_f
      end
    end
  end
  avg_age.each do |number|
    sum += number
  end
  sum = (sum/ avg_age.size).round
end
