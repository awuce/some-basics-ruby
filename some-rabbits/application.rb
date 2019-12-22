require_relative 'rabbits'

require 'io/console'

class Application
  ALLO_EXIT = %w[e E]
  def app
    while 1
      begin
        print "\n\e[36mMonths > \e[0m"
        month_max = gets.chomp
        # error = Integer(month_max) rescue next
        month_max.to_i.to_s === month_max ? month_max = month_max.to_i : month_max = -1
      end until month_max >= 0
      result = RabbitsFarm.new.farming(month_max)
      finish(month_max, result)

      print "Entering palindrome? (e - exit) "
      exit = STDIN.getch.chomp
      break if ALLO_EXIT.include? exit
    end
    puts "\n\e[36mexit\e[0m\n\n"
  end

  def finish(month_max, result)
    puts "Result \e[36mRabbitsFarm\e[0m"
    puts "after #{month_max}: \e[36m#{result}\e[0m pair of rabbits\n\n"
  end
end
