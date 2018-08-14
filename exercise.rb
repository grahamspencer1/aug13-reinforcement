ballots = [

  {1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
  {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
  {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
  {1 => 'Boots', 2 => 'Felix', 3 => 'Bella'},
  {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
  {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}

]

names = []
tally = {}

ballots.each do |ballot|
  ballot.values.each do |name|
    names << name
  end
  names.uniq!
end

names.each do |name|
  tally[name] = 0
end

ballots.each do |ballot|
  ballot.each do |position, name|
    if position == 1
      tally[name] += 3
    elsif position == 2
      tally[name] += 2
    elsif position == 3
      tally[name] += 1
    end
  end
end

puts "Final count: #{tally}"

puts "Therefore, #{tally.key(tally.values.max)} is the winner with #{tally.values.sort.max} votes."
