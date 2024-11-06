function i --wraps='invoke' --description 'alias i=invoke'
  echo "invoke $argv[1..-1]"| pokesay
  invoke $argv[1..-1]

end
