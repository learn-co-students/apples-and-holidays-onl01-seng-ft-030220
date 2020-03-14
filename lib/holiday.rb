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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday_do_hash|
    if season == :winter
      holiday_do_hash.each do |holiday, supply|
        supply.push "Balloons"
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
     puts "#{season.capitalize}:"
     holiday.each do |day, supplies|
       day_str = day.to_s
       if day_str.include?("_")
         new_day = []
         remove_day_underscore = day_str.split("_")
         remove_day_underscore.each do |word|
           new_day << word.capitalize
         end
         puts "  #{new_day.join(" ")}: #{supplies.join(", ")}".to_str
       else
         puts "  #{day_str.capitalize}: #{supplies.join(", ")}".to_str
       end
     end
   end
end

def all_holidays_with_bbq(holiday_hash)
  bbq =[]
holiday_hash.each do |season, holiday|
     holiday.each do |day, supplies|
       if supplies.include?("BBQ")
         bbq << day
       end
     end
   end
bbq
end

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
  return holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end
