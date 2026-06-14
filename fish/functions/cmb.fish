function cmb --wraps='cmake --build' --description 'alias cmb=cmake --build'
  echo "cmake --build --preset=$argv[1] $argv[2..-1]" | pokesay
  cmake --build --preset=$argv[1] $argv[2..-1]

end
