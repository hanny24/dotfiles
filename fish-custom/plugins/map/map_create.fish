function map_create --description 'Creates a new map'
	ruby -rbase64 -e "puts Base64.encode64(ARGV.each_slice(2).map {|a,b| [a,b]}.to_h.to_s)" $argv
end
