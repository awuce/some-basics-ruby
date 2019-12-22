class Stat
  attr_reader :data
  attr_writer :average

  def initialize(data)
    @data = data
  end

  def stat_max
    data.max
  end

  def stat_min
    data.min
  end

  def stat_average
    @average ||= data.inject(0) { |acc, n| acc + n } / data.size
  end

  def stat_dispersion
    av = stat_average
    Math.sqrt data.inject(0) { |sum, n| sum + ((n - av).abs)^2} / (data.length - 1)
  end
end
