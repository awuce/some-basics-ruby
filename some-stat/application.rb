require_relative 'stat'
require 'io/console'
require 'csv'

class Application
  def app
    i = 0
    arr = Array.new
	print "Enter (.csv) filename: "
	filename = gets.chomp
    CSV.foreach(filename) do |line|
      line2 = line.inspect.split("\"").map(&:to_s)
      arr[i] = line2[5].to_i if line2[5] == line2[5].to_i.to_s
      i += 1
    end
    arr = arr - ["", nil]
    print arr

    s = Stat.new(arr)
    while 1
      puts "\n\n1 - max\n2 - min\n3 - average\n4 - dispersion\nother - exit"
      choice = STDIN.getch.chomp.to_i
      if choice == 1
        print "\nMax #{s.stat_max}"
      elsif choice == 2
        print "\nMin #{s.stat_min}"
      elsif choice == 3
        print "\nAverage #{s.stat_average}"
      elsif choice == 4
        print "\nDispersion #{s.stat_dispersion}"
      else
        print "\n1 - Exit?\n"
        exit = STDIN.getch.chomp.to_i
        break if exit == 1
      end
    end
  end
end
