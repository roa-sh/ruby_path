class OlympicMedal

  include Comparable # Include the module and overwrite for our needs  
  MEDAL_VALUES = {'Gold'=> 3, 'Silver'=>2, 'Bronze'=> 1}
  attr_reader :type

  def initialize (type, weight)
    @type = type
    @weight = weight
  end

  def <=> (other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

gold = OlympicMedal.new('Gold', 4)
silver = OlympicMedal.new('Silver', 5)
bronze = OlympicMedal.new('Bronze', 2)

p gold < silver
p silver < silver
p gold > bronze
p bronze > silver