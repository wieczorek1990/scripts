#!/usr/bin/env ruby
# Modify below to run using one argument
START_DATE = [2014, 8, 21]
START_WEIGHT = 79.0
TARGET_WEIGHT = 65.0

require 'date'
require 'io/console'

class DietInfo
  def self.run(argv)
    argc = argv.count
    unless [1, 5, 6].include? argc
      puts 'Wrong arguments!'
      puts 'Usage: weight_loss_info.rb today_weight'
      puts '       weight_loss_info.rb year month day start_weight today_weight [target_weight]'
      puts 'Modify variables to run using one argument.'
      exit 1
    end
    if argc == 1
      argv[4] = ARGV[0]
      argv[0..2] = START_DATE
      argv[3] = START_WEIGHT
      argv[5] = TARGET_WEIGHT
    end
    start_date = Date.new(argv[0].to_i, ARGV[1].to_i, ARGV[2].to_i)
    start_weight = argv[3].to_f
    today_weight = argv[4].to_f
    if argc == 1 or argc == 6
      target_weight = argv[5].to_f
    end

    today_date = Date.today
    days = (today_date - start_date).to_i
    if Time.now.hour >= 12
      days += 1
    end
    kg = start_weight - today_weight
    kg_daily = kg / days
    if defined? target_weight
      kg_left = today_weight - target_weight
      days_left = (kg_left / kg_daily).round
      end_date = today_date + days_left
    end

    info_hash = {
      'Start date:' => start_date,
      'Today_date:' => today_date,
      'Days passed:' => days,
      'Kg loss:' => kg.round(1),
      'Daily kg loss:' => kg_daily.round(2)
    }
    if defined? target_weight
      extra_info_hash = {
        'End date:' => end_date,
        'Days left:' => days_left
      }
      info_hash.merge! extra_info_hash
    end
    longest_key = info_hash.map { |k, v| k.length }.max
    puts 'Welcome to weight loss info!'
    info_hash.each do |k, v|
      printf "%-#{longest_key}s %s\n", k, v
    end
    puts 'See you later!'
  end
end

# Modify below to run from e.g. http://codepad.org/
#ARGV[0] = 69.2
DietInfo.run(ARGV)
