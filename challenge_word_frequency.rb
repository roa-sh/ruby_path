# Create a method that counts the frequency of every word in a str

str = 'The container ship X-Press Pearl (pictured) sinks near Colombo, Sri Lanka, leaking several tons of nitric acid and oil into the ocean and causing a major environmental disaster.'

def frequency(str)
  frq = {}
  str.split().each do |k|
    if frq.key?(k)
      frq[k] += 1
    else
      frq[k] = 1
    end
  end
  frq
end

p frequency(str)