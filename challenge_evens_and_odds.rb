def evens_and_odds(arr)
  return arr.partition { |n| n.odd? }
end

odds, evens = evens_and_odds([4, 8, 15, 6, 23, 42])

p odds, evens