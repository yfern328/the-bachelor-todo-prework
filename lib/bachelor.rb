def get_first_name_of_season_winner(data, season)
  data.each do |season_number, arr|
    if season_number == season
      arr.each_with_index do |el, idx|
        el.each do |k, v|
          if v == "Winner"
            return data[season_number][idx]["name"].split.first
          end
        end
      end
    end
  end
  nil
end

def get_contestant_name(data, occupation)
  data.each do |season_number, arr|
    arr.each_with_index do |el, idx|
      el.each do |k, v|
        if v == occupation
          return data[season_number][idx]["name"]
        end
      end
    end
  end
  nil
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_number, arr|
    arr.each_with_index do |el, idx|
      el.each do |k, v|
        if v == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season_number, arr|
    arr.each_with_index do |el, idx|
      el.each do |k, v|
        if v == hometown
          return data[season_number][idx]["occupation"]
        end
      end
    end
  end
  nil
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |season_number, arr|
    if season_number == season
      arr.each_with_index do |el, idx|
        el.each do |k, v|
          if k == "age"
            ages << data[season_number][idx][k].to_i
          end
        end
      end
    end
  end
  (ages.reduce(:+).to_f/ages.length).round
end
