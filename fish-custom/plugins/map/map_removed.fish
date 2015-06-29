function map_removed --description 'Removes keys from a map' -a MAP
	ruby -rbase64 -e "tmp = eval(Base64.decode64(ARGV[0])); ARGV[1..-1].each {|k| tmp.delete(k)}; puts Base64.encode64(tmp.to_s)" $MAP $argv
end
