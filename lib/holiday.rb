require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]


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
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
nuarray =[]
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
nuarray = holiday_hash[:winter].values
nuarray.each {|a| a<<"Balloons"}

end


def add_supply_to_memorial_day(holiday_hash, supply)
  nuarray = []
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
nuarray = holiday_hash[:spring].values.flatten
nuarray << supply
holiday_hash[:spring][:memorial_day]=nuarray
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash[season]
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten# return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  nuarray =[]
  holiday_hash.each do |key,value|
    puts "#{key.capitalize}:"
    value.each do |holiday,supplies|
      nuarray = holiday.to_s.tr("_"," ").split
    puts "  #{nuarray.collect {|s| s.capitalize}.join(" ")}: #{supplies.join(", ")}"
  end
end
end

    # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
  nuarray = []
  holiday_hash.each do |season,data|
    data.each do |values,supplies|
      if supplies.include?("BBQ")
        nuarray << values

      end
    end

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
nuarray
end
