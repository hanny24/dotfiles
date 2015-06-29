function map_get --description 'Gets a value from a map'
	ruby -rbase64 -rshellwords -e "puts Shellwords.escape(eval(Base64.decode64(ARGV[0]))[ARGV[1]].to_s)" $argv
end
