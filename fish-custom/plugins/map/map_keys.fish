function map_keys --description 'Lists map keys'
	ruby -rbase64 -rshellwords -e "puts eval(Base64.decode64(ARGV[0])).keys.map{|v| Shellwords.escape(v)}.join(\"\n\")" $argv
end
