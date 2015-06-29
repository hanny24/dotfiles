function bool --description 'Convert argument or input representing boolean value into status code'
  set -l _line 
  if [ (count $argv) -eq 0 ]
    if read -l line
      set _line $line
    end
  else
    set _line $argv[1]
  end
  switch (str '$_.downcase' $_line)
    case true
      true
    case '*'
      false
  end
end
