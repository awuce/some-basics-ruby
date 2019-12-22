class RabbitsFarm
  def farming(month_max)
    pair_rabbits = Array.new
    pair_rabbits[0] = 0
    return 1 if month_max == 0 || month_max == 1
    return -1 if month_max < 0

    for month in (1..month_max)
      current_rabbits = pair_rabbits.length-1
      for i in (0..current_rabbits)
        pair_rabbits[i] += 1
      end
      for j in (0..current_rabbits)
        pair_rabbits[pair_rabbits.length] = 0 if pair_rabbits[j] >= 2
      end
    end
    return pair_rabbits.length
  end
end
