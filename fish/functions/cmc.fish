function cmc --wraps='cmake' --description 'alias cmc=cmake'
  echo "cmake --preset=$argv[1] -G Ninja $argv[2..-1]"| pokesay
  cmake --preset=$argv[1] -G Ninja $argv[2..-1]

end
