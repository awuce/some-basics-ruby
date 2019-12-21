class Palindrome
  def palindrome?(result)
    without_spaces = result.gsub(/\s+/, '').downcase
    reversed = without_spaces.reverse
    without_spaces == reversed
  end
end
