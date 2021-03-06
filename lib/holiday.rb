require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |key, value|
    value << "Balloons"
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  if supply == "Grill"
  holiday_hash[:spring][:memorial_day] << "Grill"
else
  holiday_hash[:spring][:memorial_day][1] = "Table Cloth"
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array


end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|

    puts "#{season}:".capitalize!

    holiday.each do |name, supply|
      name_upper = name.to_s.split("_")
      print name_upper
      name_upper.each do |word|
        word.to_s.capitalize!
      end
      holiday_name = name_upper.join(" ").to_s

      new_supply = supply.join(", ").to_s

      puts "  #{holiday_name}: #{new_supply}"

    end
  end
end



def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_name, supply|
    supply.collect do |supply_item|
      if supply_item == "BBQ"
      holiday_array << holiday_name
    end
    end
    end
  end
  holiday_array
end
