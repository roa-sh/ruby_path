class Gadget
  def initialize
    @username = "Username #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..100)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}
    It is made by the #{self.class} class and it's id is #{self.object_id}"
  end

  def username
    @username
  end
  
  def username=(new_username)
    @username = new_username
  end

  def production_number
    @production_number
  end

  def password=(new_password)
    @password = new_password
  end
end

phone  = Gadget.new
p phone
p phone.is_a?(Gadget)

p phone.object_id

# pointing to the same object and memory point
cellphone = phone

p cellphone.object_id == phone.object_id #true

p laptop = Gadget.new

# Instance variables
p phone.instance_variables
p laptop.instance_variables

# Instance methods
p phone.to_s
p laptop.to_s

# Getter Methods
p phone.username
p phone.production_number

# Setter Methods
phone.password=('jajaja')
phone.username=('Moto G 10')
p phone

