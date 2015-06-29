function fmath --description 'Advanced floating point math using qalc.'
	set result (qalc -t $argv)
	switch $result
		case 0
				false
		case '*'
			true
	end
end
