# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

require "to_words"

class BeerSong

  attr_accessor :beer
  @beer = 0

  def initialize(beer)
    if beer > 99 then self.beer = 99
    elsif beer < 0 then self.beer = 0
    else self.beer = beer end
  end

  def print_song()
    if self.beer > 0 then
      self.beer.downto 1 do |n|
        print_stanza n
      end
    else
      return String.new
    end
  end

  def get_words(n)
    return n.to_words.capitalize.tr(" ", "-")
  end

  def get_plural(n)
    return (n != 1) ? "bottles" : "bottle"
  end

  def print_stanza(n)
    bottle = (n != 1) ? "bottles" : "bottle"
    puts "#{get_words(n)} #{get_plural(n)} of beer on the wall," +
    "\n#{get_words(n)} #{get_plural(n)} of beer,\n" +
    "Take one down, pass it around,\n" +
    "#{get_words(n-1)} #{get_plural(n-1)} of beer on the wall."
  end
end
