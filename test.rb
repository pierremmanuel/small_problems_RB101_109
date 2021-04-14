DEGREE = "\xC2\xB0"

def dms(deg_float)
  deg_float = deg_float % 360
  degrees, remainder = deg_float.divmod(1)
  minutes, seconds = (remainder * 60).divmod(1)
  seconds *= 60
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(-56)
