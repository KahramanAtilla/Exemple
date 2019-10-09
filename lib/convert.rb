require 'pry'

def reroll2(t)
	if t >122
	t = t -26
	end
	return t
end

def reroll(t)
	if t >90
	t = t - 26
	end
	binding.pry
	return t
end

def convert(str, i , q)
	t = str[i]
	t = t.ord
	t = t + q
	t = reroll(t)
	t = t.chr
	str[i] = t
	return str
end

def convert2(str, i, q)
	t = str[i]
	t = t.ord
	t = t + q
	t = reroll2(t)
	t = t.chr
	str[i] = t
	return str	
end

def main(str, q)
	i = 0

	while str[i]
		if str[i].ord >= 65 && str[i].ord <= 90
		  str = convert(str, i , q)
		elsif str[i].ord >= 91 && str[i].ord <= 122
		  str = convert2(str, i , q)
		end
		i = i + 1
	end
	puts str
	return str
end


def perform
	main("Kaaneki", 12)
end

perform
