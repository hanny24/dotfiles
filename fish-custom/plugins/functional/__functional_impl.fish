function __functional_impl --argument to_eval
	if [ (count $argv[2..-1]) -eq 0 ]
		while read -l _1
			eval "$to_eval"
		end
	else
		for _1 in $argv[2..-1]
			eval "$to_eval"
		end
	end
end

