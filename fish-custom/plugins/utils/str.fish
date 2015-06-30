function str --argument command --description "Ruby based string processing util"
  if [ (count $argv) -eq 1 ]
    ruby -n -e "puts begin $command end"
  else
    printf "%s\n" $argv[2..-1] | ruby -n -e "puts begin $command end"
  end
end
