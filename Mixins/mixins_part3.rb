class ConvenienceStore
  
  include Enumerable  # module with a bunch of methods that iterates over an array as
                      # map, select, reject, each, 

  attr_reader :snacks

  def initialize 
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  # def each 
  #   snacks.each do |snack|
  #     yield snack
  #   end
  # end
end

kwikemart = ConvenienceStore.new
kwikemart.add_snack('Jet')
kwikemart.add_snack('Gummybears')
kwikemart.add_snack('Chupiplum')

p kwikemart.snacks
p kwikemart.snacks.map { |s| s.upcase }
p kwikemart.snacks.map(&:downcase)
