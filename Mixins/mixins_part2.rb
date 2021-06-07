module Purchaseable 
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable

  def purchase(item)
    "You bought a #{item} in the Bookstore"
  end

end

class Supermarket
  include Purchaseable
  def purchase(item)
    "Thx for comming to the Supermarket and buying #{item} "
  end
end

class CornerMart < Supermarket #Inheritance From Supermarket to CornerMart
  def purchase(item)
    "Thanks for buying #{item} to Ms. Cecilia, she really apreciates it."
  end
end

libelula = Bookstore.new
p libelula.purchase('The Shining')

inter = Supermarket.new
p inter.purchase('Oreos')

d1 = CornerMart.new
p d1.purchase('Jabon Rey')

# .ancetors Ruby is going to findd the method in the class ancestors, starting by the very first.
p Bookstore.ancestors
p Supermarket.ancestors
p CornerMart.ancestors