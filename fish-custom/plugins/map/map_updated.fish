function map_updated --description 'Updates keys in a map'
  set --local container ''
  if [ $argv[1] = '--' ]
    if read -l line
        set container $line
    end
  else
    set container $argv[1]
  end
  ruby -rbase64 -e "puts Base64.encode64(eval(Base64.decode64(ARGV[0])).merge(ARGV[1..-1].each_slice(2).map {|a,b| [a,b]}.to_h).to_s)" $container $argv[2..-1]
end
