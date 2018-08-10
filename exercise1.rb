ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

score = {}
names = []
# This loop will create an array of names
ballots.each do |ballot|
  ballot.values.each do |name|
    names << name
  end
end
#Assigning hash keys and values to our empty score hash
names.uniq!.each do |name|
  score[name] = 0
end

ballots.each do |ballot|
  ballot.each do |place, name|
    if place == 1
      score[name] += 3
    elsif place == 2
      score[name] += 2
    elsif place == 3
      score[name] += 1
    end
  end
end
p score
