require 'pry'
 holiday_supplies={
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]
      
    
 
  
  
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter][:christmas]<<supply
  holiday_hash[:winter][:new_years]<<supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day]<<supply
  holiday_hash[:spring][:memorial_day]<<supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash
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
  
  holiday_hash.each do |season, value|
    puts "#{season.capitalize}:"
    value.each do |holiday, supplies|
      puts"  #{holiday.to_s.tr("_"," ").split.map(&:capitalize).join(' ')}: "+"#{supplies.to_a.join(', ')}"
    end
    
    
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  new_array_with_bbq=[]
  
  holiday_hash.each do |season, value|
    value.each do |holiday,supply|
      supply.each do |name|
        if name=="BBQ"
          new_array_with_bbq<<holiday
        end
      end
      
    end
    
  end

  new_array_with_bbq

end






