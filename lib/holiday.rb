
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]

end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do | holiday, supplies |
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].map do | holiday, supplies |
    supplies
  end.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do | season, holidays |
    puts "#{season.capitalize}:"
    holidays.each do | holiday, supplies |
      puts "  #{holiday.to_s.split('_').map{ |hol| hol.capitalize}.join(" ") }: #{supplies.join(", ")}"

    end
  end
end

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


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do | season, holidays |
    holidays.map do | holiday, supplies |
      holiday  if supplies.include?("BBQ")
    end
  end.flatten.compact
end
