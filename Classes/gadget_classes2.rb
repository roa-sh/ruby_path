class Gadget

  # Shortcut accesor methods
  attr_accessor :username #:password no, bc password could not be able to see by no one
  attr_reader :production_number, :apps
  # attr_writer :password

  def initialize (username, password)
    @username = username
    @password = password
    @production_number = generate_prod_number
    @apps = []
  end

  def password=(new_password) # Setter for password and validates
    if validate_password(new_password)
      @password = new_password
    end
  end

  def reset(username, password)
    @username = username
    @password = password
    @apps = []


  def to_s
    "Gadget #{production_number} has the username #{username} 
    It is made by the #{self.class} class and it's id is #{self.object_id}"
  end

  private # Just can be used by the class where the method is 
  def generate_prod_number
    start_digits = rand(1000..9999)
    end_digits = rand(1000..9999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2021"
    5.times { middle_digits << alphabet.sample}
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length > 6 && new_password =~ /\d/
  end

end

phone  = Gadget.new('roa', '12345')
laptop = Gadget.new('melissa', '3456')

p phone.production_number

#p phone.password
phone.password = 'pass'
#p phone.password
phone.password = 'pass1234'
#p phone.password

p phone.to_s
p laptop.to_s