# This is code is for study Hashes in ruby
# Author: @roa-sh

my_friends_carreer = { 'roa' => 'engineer', 'nata' => 'marketer',
                  'stiven' => 'doctor', 'cande' => 'admin', 'nicole' => 'biologist',
                  'dani' => 'artist', 'daniel' => 'engineer' }


p my_friends_carreer['dani']

# Hashes with symbols

my_friends_carreer2 = {nico: 'engineer', nata: 'marketer', stiven: 'doctor'}

# .fetch when some key-value doesn't exist and don't want to return nil

p my_friends_carreer2[:stiven]
p my_friends_carreer2.fetch(:mono, 'Not found')


# add or overwrite values to a hash

my_friends_carreer2[:mono] = 'veterinary'
p my_friends_carreer2[:mono]

#or it could be 

my_friends_carreer2.store(:mario, 'engineer')
p my_friends_carreer2