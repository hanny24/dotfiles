function map_size --description 'Get size of a map'
	ruby -rbase64 -e "puts eval(Base64.decode64(ARGV[0])).size" $argv
end
