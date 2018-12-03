pos = 0					    # Position on the number line
File.readlines('input1').each do |val|	    # For each line
	if val[0] == '-'
		pos = pos - val[1..-1].to_i
	else
		pos = pos + val[1..-1].to_i
	end
end
print pos
