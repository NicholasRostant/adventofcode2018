require 'set'				# Array lookup DEFINITELY not fast enough
pos = 0					    # Position on the number line
visited = Set.new

movements = File.readlines('input1').map(&:to_i) # Nicer parsing
movements.pop() #remove trailing newline

movements.cycle { |move|
	pos = pos + move # It's in signed ints now!
	if visited.include? pos
		break
	else
		visited << pos
	end
}
print pos
