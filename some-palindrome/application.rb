require_relative 'palindrome'
require 'io/console'

class Application
  ALLO_E = %w[e E]
  def app
    while 1
      print "\n\e[36mPut palindrome > \e[0m"
      result = gets.chomp
      end_result = Palindrome.new.palindrome? result
      finish(end_result)
      print "Entering palindrome? (e - exit) "
      exit = STDIN.getch.chomp
      break if ALLO_E.include? exit
    end
    puts "\n\e[36mexit\e[0m\n\n"
  end

  def finish(result)
    print "\e[36mResult \e[0m"
    print "is \e[36mPalindrome\e[0m\n\n"     if result == true
    print "is \e[36mnot Palindrome\e[0m\n\n" if result == false
  end
end
