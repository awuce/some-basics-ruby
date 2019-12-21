require_relative 'degrees'
require 'io/console'

class Application
  attr_accessor :degrees, :scale_begin, :scale_end, :result
  ALLO_SCALES = %w[c C k K f F]

  def app
      gets_degrees
      gets_scale
      @result = Degrees.new.convert(@degrees.to_i, @scale_begin.to_s, @scale_end.to_s)
      puts "\n#{@degrees} \e[36m°#{@scale_begin}\e[m = #{@result} \e[36m°#{@scale_end}\e[0m\n\n"
  end

  def gets_degrees
    begin
      print "\e[36mPut degrees  > \e[0m"
      @degrees = gets.chomp
      @degrees.to_s.to_i === @degrees ? @degrees = @degrees.to_i : exit = true
    end until exit
  end

  def gets_scale
    begin
      print "\n\e[36mPut scale in  > \e[0m"
      @scale_begin = STDIN.getch.chomp.downcase
    end until ALLO_SCALES.include? @scale_begin
    begin
      print "\n\e[36mPut scale out > \e[0m"
      @scale_end = STDIN.getch.chomp.downcase
      next if @scale_end == @scale_begin
    end until ALLO_SCALES.include? @scale_end
    print "\n"
  end
end
