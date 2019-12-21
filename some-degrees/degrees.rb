class Degrees
  def convert(degrees, scale_begin, scale_end)
    send("convert_from_#{scale_begin}_to_#{scale_end}", degrees)
  end

  private

  def convert_from_c_to_k(degrees)
    degrees + 273.15
  end
  def convert_from_c_to_f(degrees)
    (degrees * 9/5) + 32
  end
  def convert_from_f_to_c(degrees)
    (degrees - 32) * 5/9
  end
  def convert_from_f_to_k(degrees)
    (degrees - 32) * 5/9 + 273.15
  end
  def convert_from_k_to_c(degrees)
    degrees - 273.15
  end
  def convert_from_k_to_f(degrees)
    (degrees - 273.15) * 9/5 + 32
  end
end
