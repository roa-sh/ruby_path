# This is code is for study Hashes 2 in ruby
# Author: @roa-sh


# Default value in Hashses
my_hsh = Hash.new('Not found')

p my_hsh[:jaj]

# Hashes to array
carreers = {nico: 'engineer', nata: 'marketer', stiven: 'doctor'}

arr = carreers.to_a

p arr

h = arr.to_h
p h

# .sort or sort_by
p carreers.sort

p(carreers.sort_by { |k, v| v })

# .key? .value? if exist in the hash it'd return true
p carreers.key?(:nata)
p carreers.key?(:monoide)
p carreers.value?('engineer')

# Hashes as parameters, could be useful bc they don't need to be in a specific order

# .delete
carreers.delete(:nico)
p carreers

# .reject or .select

carreers[:nico] = 'doctor'
p carreers

# select only with a starting n
p carreers.select { |k, v| k.to_s[0] == 's'}

p carreers.reject { |k, v| v == 'doctor'}


# .merge keep the values from the second hash

market = {eggs:0, milk: 10, bread:17, cinnamon:4}
kitchen = {eggs:12, cheesee: 10, bread:2, lemon:6}

p kitchen.merge(market)
