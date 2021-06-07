# This code is for study Classe 2 in ruby
# Author: @roa-sh


# All is in /classes
# All is in /classes/gadget_classes2.rb
# All is in /classes/monkey_patch.rb


# 
class Bicycle 

  @@series = 'a'
  @@count = 0

  attr_reader :serial
  
  def initialize
    @serial = "B-#{@@series}##{@@count}"
    update
  end
  
  def to_s
    @serial
  end

  private
  def update
    @@count += 1
    @@series = @@series.next if (@@count % 10).zero?
  end
end

100.times { p Bicycle.new.to_s}


