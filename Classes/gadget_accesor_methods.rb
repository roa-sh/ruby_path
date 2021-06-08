class Gadget

  # Shortcut accesor methods
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize (uername, password)
    @username = username
    @password = password
    @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username} 
    It is made by the #{self.class} class and it's id is #{self.object_id}"
  end
end

phone  = Gadget.new('roa', '12345')
laptop = Gadget.new('melissa', '3456')

p phone.username
phone.username = 'kommit'
p phone.username

# p phone.password # it won't work bc is write only
p phone.password = 'mmitkoins' # it won't work bc is write only
p phone
