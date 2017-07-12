# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  s = ""
  ((0 ... string.length).find_all { |i| string.downcase[i,1] == 'r' }).each do |c|
    if c < (string.length-1) then s += string[c+1] end
  end
  return s
end
