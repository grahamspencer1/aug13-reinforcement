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
  ballot.each do |key, value|
    if key == 1
      tally[value] += 3
    elsif key == 2
      tally[value] += 2
    elsif key == 3
      tally[value] += 1
    end
  end
end

p tally
